using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Rewired;

public class MechController : MonoBehaviour
{
    //Rewired
    private Rewired.Player rewiredPlayer;
    
    //Private
    private Vector3 moveVector;
    private Vector3 lookVector;
    private MechModel mechModel;
    
    //Public
    public int PlayerNum;
    
    // Start is called before the first frame update
    void Start()
    {
        rewiredPlayer = ReInput.players.GetPlayer(PlayerNum);
        mechModel = GetComponent<MechModel>();
    }

    // Update is called once per frame
    void Update()
    {
        MoveInput();
        LookInput();
    }

    void MoveInput()
    {
        moveVector = new Vector3(rewiredPlayer.GetAxis("Strafe"), 0, rewiredPlayer.GetAxis("Walk"));
        
        //Push that to the model
        if (moveVector != Vector3.zero)
        {
            mechModel.Accelerate(moveVector);
        }
    }

    void LookInput()
    {
        lookVector = new Vector3(rewiredPlayer.GetAxis("LookHorizontal"), rewiredPlayer.GetAxis("LookVertical"));
        
        //clamp the values so you can't flip the camera
        //push to the model
    }
}
