using System;

namespace CopaData.Drivers.BVBIOT.Mqtt
{
    public class SensorPayload
    {
        public double Value { get; set; }

        public DateTime LastChangeDateTime { get; set; }
    }
}
