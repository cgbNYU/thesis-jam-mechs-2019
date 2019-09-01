using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CardManager : MonoBehaviour
{
    private List<Card> _activeCards; //Cards in play
    private List<Card> _deck; //Cards in the deck
    private float _timer; //Current time on the timer
    private float _timerMax; //Max time

    private void Update()
    {
        _timer += Time.deltaTime;
        if (_timer >= _timerMax)
        {
            DealActive();
        }
    }
    
    //Shuffle the Deck
    private void ShuffleDeck(){}
    
    //Deal 5 to player
    private void DealActive(){}
    
    //Discard and deal
    private void DiscardActive()
    {
        DealActive();
    }

}
