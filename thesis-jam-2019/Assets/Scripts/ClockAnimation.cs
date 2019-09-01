using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ClockAnimation : MonoBehaviour
{
    public GameObject Arrow;
    public GameObject Aura;
    
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        Arrow.transform.Rotate(0,0,-72f*Time.deltaTime);
        Aura.GetComponent<Image>().color += new Color(0,0,0,0.2f*Time.deltaTime);

        if (Aura.GetComponent<Image>().color.a >= 1)
            Aura.GetComponent<Image>().color = new Color(1,1,1,0);
    }
}
