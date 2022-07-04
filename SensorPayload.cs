using System;

namespace CopaData.Drivers.BVB-IOT.Mqtt
{
    public class SensorPayload
    {
        public double Value { get; set; }

        public DateTime LastChangeDateTime { get; set; }
    }
}
