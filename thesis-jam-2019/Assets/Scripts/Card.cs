using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[ExecuteInEditMode]
public class Card : MonoBehaviour
{
    //UI
    [Header("UI")]
    //Card Name
    protected Text u_cardName;
    [SerializeField] protected string _cardName;
    //Energy Cost
    protected Text u_energyCost;
    [SerializeField] protected int _energyCost;
    //Card text 1
    protected Text u_cardText1;
    [SerializeField] protected string _cardText1;
    //Card text 2
    protected Text u_cardText2;
    [SerializeField] protected string _cardText2;
    //Flavor
    protected Text u_flavor;
    [SerializeField] protected string _flavor;

    //Card Stats
    [Header("Stats")]
    [SerializeField] protected int _atkMod; public int AtkMod => _atkMod; //Attack Modifier
    [SerializeField] protected int _spdMod; public int SpdMod => _spdMod; //Speed Modifier
    [SerializeField] protected int _nrgMod; public int NrgMod => _nrgMod; //Energy Modifier
    [SerializeField] protected int _jmpMod; public int JmpMod => _jmpMod; //Jump Modifier

    // Called when object is created
    protected void Awake()
    {
        Init();
    }

    protected void Init()
    {
        //Find the UI
        u_cardName = transform.Find("CardName").GetComponent<Text>();
        u_energyCost = transform.Find("EnergyCost").GetComponent<Text>();
        u_cardText1 = transform.Find("CardText1").GetComponent<Text>();
        u_cardText2 = transform.Find("CardText2").GetComponent<Text>();
        u_flavor = transform.Find("Flavor").GetComponent<Text>();

    }
    
    //For Unique Cards
    public virtual void UniqueEffect() {}
    
    protected void LateUpdate()
    {
        AssignUI();
    }
    
    protected void AssignUI()
    {
        u_cardName.text = _cardName;
        u_energyCost.text = _energyCost.ToString();
        u_cardText1.text = _cardText1;
        u_cardText2.text = _cardText2;
        u_flavor.text = _flavor;
    }
}
