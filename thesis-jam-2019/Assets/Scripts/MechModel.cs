using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MechModel : MonoBehaviour
{
    
    //Public
    public float Drag = .1f; //has to be less than 1
    public float Accel = 5f;
    public float Gravity = 10;
    public float CoFriction = .5f; //0 to 1
    public float Mass = 10;
    
    //Private
    private float _velocity;
    private Vector3 acceleration;
    
    // Start is called before the first frame update
    void Start()
    {
        _velocity = 0;
        acceleration = Vector3.zero;
    }

    // Update is called once per frame
    void Update()
    {
        Move();
    }

    public void Accelerate(Vector3 accelerateVector)
    {
        //take input from controller and add to mech velocity
        Vector3 frictionDir = -accelerateVector.normalized;
        acceleration = accelerateVector + (frictionDir * Mass * Gravity * CoFriction);
    }

    public void Look()
    {
        //take input from controller to look around
    }

    public void Move()
    {
        //use the current velocity to move, and then decelerate
        

        //decelerate
        
    }
}
