using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Experimental.PlayerLoop;
using Random = System.Random;

public class CardManager : MonoBehaviour
{
    private Card[] _activeCards; //Cards in play
    private Stack<Card> _discard; //Discarded Cards
    private Stack<Card> _deck; //Cards in the deck
    public List<GameObject> CardPrefabs = new List<GameObject>();
    private float _timer = 0f; //Current time on the timer
    public float _timerMax = 30f; //Max time
    private Transform _parent;
    private GameObject[] _activeCardObjects;
    public MechModel Model;
    private void Update()
    {
        _timer += Time.deltaTime;
        if (_timer >= _timerMax)
        {
            DiscardActive();
            _timer = 0;
        }
    }

    private void Awake()
    {
        Init();
        DealActive();
    }

    //Initialize Vars
    private void Init()
    {
        _parent = GameObject.Find("Cards").transform;
        _discard = new Stack<Card>();
        _activeCards = new Card[5];
        _activeCardObjects = new GameObject[5];
        _deck = new Stack<Card>();
        foreach (GameObject g in CardPrefabs)
        {
            _deck.Push(g.GetComponent<Card>());
        }
    }

    //Shuffle the Deck
    private void ShuffleDeck()
    {
        if (_discard.Count > 0)
        {
            //Add discard to deck
            Card[] discardArr = new Card[_discard.Count];
            _discard.CopyTo(discardArr, 0);

            foreach (Card c in discardArr)
            {
                _deck.Push(c);
            }
        }

        //Shuffle
        Random rng = new Random();
        //Convert to array
        Card[] deckArr = new Card[_deck.Count];
        _deck.CopyTo(deckArr, 0);
        //Shuffle up
        int i = deckArr.Length;
        while (i > 1)
        {
            i--;
            int k = rng.Next(i + 1);
            Card tempC = deckArr[k];
            deckArr[k] = deckArr[i];
            deckArr[i] = tempC;
        }
        
        _deck.Clear();
        foreach (Card c in deckArr)
        {
            _deck.Push(c);
        }
    }
    
    //Deal 5 to player
    private void DealActive()
    {
        float x = 100;
        for (int i = 0; i < 5; i++)
        {
            if(_deck.Count == 0)
                ShuffleDeck();
            _activeCards[i] = _deck.Pop();
            _activeCardObjects[i] = Instantiate(_activeCards[i].gameObject, new Vector3(x, 100, 1), Quaternion.identity, _parent);
            x += 200;
        }
        //Model.ApplyMods(_activeCards);
    }
    
    //Discard and deal
    private void DiscardActive()
    {
        for(int i = _activeCards.Length - 1; i >= 0; i--)
        {
            _discard.Push(_activeCards[i]);
            Destroy(_activeCardObjects[i]);
        }
        _activeCards = new Card[5];
        _activeCardObjects = new GameObject[5];
        DealActive();
    }

}
