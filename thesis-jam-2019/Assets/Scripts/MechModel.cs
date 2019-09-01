using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MechModel : MonoBehaviour
{
    
    //Public
    public float Drag = .1f; //has to be less than 1
    public float Accel = 5f;
    public float Jump = 12f;
    public float Attack = 10f;
    public float Gravity = 10;
    public float CoFriction = .5f; //0 to 1
    public float Mass = 10;
    public GameObject CameraPivot;
    public float CameraVertSpeed = 3;
    public float CameraHorzSpeed = 3;
    public float CameraVertMin = 23;
    public float CameraVertMax = -10;
    
    //Private
    private float _velocity;
    private Vector3 acceleration;
    private float rotationY;
    private Quaternion originalRotation;
    private Camera cam;
    private float accelMod;
    private float energy;
    private float jumpMod;
    private float attackMod;
    private bool jumping;
    
    
    // Start is called before the first frame update
    void Start()
    {
        _velocity = 0;
        acceleration = Vector3.zero;
        originalRotation = transform.localRotation;
        cam = Camera.main;

        accelMod = Accel;
        energy = 0;
        jumpMod = Jump;
        attackMod = Attack;

        jumping = false;
    }

    // Update is called once per frame
    void Update()
    {
        Move();
    }

    public void Accelerate(Vector3 accelerateVector)
    {
        //take input from controller and add to mech velocity
        Vector3 forward = cam.transform.forward;
        Vector3 right = cam.transform.right;
        forward.y = 0f;
        right.y = 0f;
        forward.Normalize();
        right.Normalize();

        Vector3 camRelativeVector = forward * accelerateVector.z + right * accelerateVector.x;
        acceleration += camRelativeVector * accelMod * Time.deltaTime;
    }

    public void Look(Vector3 lookVector)
    {
        //Vertical
        rotationY += lookVector.y * CameraVertSpeed;
        rotationY = ClampAngle(rotationY, CameraVertMin, CameraVertMax);
        Quaternion yQuaternion = Quaternion.AngleAxis(rotationY, -Vector3.right);

        CameraPivot.transform.localRotation = originalRotation * yQuaternion;
        
        //Horizontal
        transform.Rotate(0, lookVector.x * CameraHorzSpeed, 0);
    }

    public void Move()
    {
        //move
        transform.position += acceleration;
        
        //friction
        Vector3 friction = -acceleration.normalized * CoFriction * Time.deltaTime;
        acceleration += friction;
        
        //check if acceleration is real low and set to 0
        /*if (Mathf.Abs(acceleration.x) < .02)
        {
            acceleration = new Vector3(0, acceleration.y, acceleration.z);
        }

        if (Mathf.Abs(acceleration.z) < .02)
        {
            acceleration = new Vector3(acceleration.x, acceleration.y, 0);
        }*/
    }

    public void Fall()
    {
        
    }

    public static float ClampAngle(float angle, float min, float max)
    {
        if (angle < -360f)
            angle += 360f;
        if (angle > 360f)
            angle -= 360f;
        return Mathf.Clamp(angle, min, max);
    }

    public void ApplyMods(Card[] cards)
    {
        for (int i = 0; i <= cards.Length; i++)
        {
            
        }
    }
}
