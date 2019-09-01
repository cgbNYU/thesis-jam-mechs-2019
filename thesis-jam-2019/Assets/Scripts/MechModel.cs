using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MechModel : MonoBehaviour
{
    
    //Public
    
    
    //Private
    private int _velocity;
    
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void Accelerate()
    {
        //take input from controller and add to mech velocity
    }

    public void Look()
    {
        //take input from controller to look around
    }

    public void Move()
    {
        //use the current velocity to move, and then decelerate
    }
}
