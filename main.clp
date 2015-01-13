;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;PONT FILE;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass Value
	(is-a USER)
	(role concrete)
	(single-slot equals
		(type INTEGER)
		(range 0 ?VARIABLE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Input
	(is-a USER)
	(role concrete)
	(multislot enters
		(type INSTANCE)
		(allowed-classes IntegratedCircuit)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Sensor
	(is-a USER)
	(role concrete)
	(single-slot countsIntegratedCircuit
		(type INSTANCE)
		(allowed-classes IntegratedCircuit)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass ElectricCircuitInputValues
	(is-a USER)
	(role concrete)
	(multislot hasFourValues
		(type INSTANCE)
		(allowed-classes Value)
		(cardinality 4 4)
		(create-accessor read-write)))

(defclass ElectricCircuit
	(is-a USER)
	(role concrete)
	(multislot has
		(type INSTANCE)
		(allowed-classes SensorsValues IntegratedCircuit)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot hasOutput
		(type INSTANCE)
		(allowed-classes Value)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot hasInput
		(type INSTANCE)
		(allowed-classes ElectricCircuitInputValues)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot hasSensorValues
		(type INSTANCE)
		(allowed-classes SensorsValues)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass IntegratedCircuit
	(is-a USER)
	(role abstract)
	(multislot isEntered
		(type INSTANCE)
		(allowed-classes Input IntegratedCircuit)
		(cardinality 2 2)
		(create-accessor read-write))
	(single-slot exit
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Adder
	(is-a IntegratedCircuit)
	(role concrete))

(defclass Multiplier
	(is-a IntegratedCircuit)
	(role concrete))

(defclass SensorsValues
	(is-a USER)
	(role concrete)
	(multislot haveInput
		(type INSTANCE)
		(allowed-classes Value)
		(create-accessor read-write)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;PINS FILE;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(definstances facts
	([ElectricCircuit1] of  ElectricCircuit

		(has
			[AdderA1]
			[AdderA2]
			[MultiplierM1]
			[MultiplierM2]
			[Circle1Sensor])
		(hasInput [Circle1Inputs])
		(hasOutput [Circle1Output])
		(hasSensorValues [Circle1Sensor]))

	([ElectricCircuit2] of  ElectricCircuit

		(has
			[AdderA1]
			[AdderA2]
			[MultiplierM1]
			[MultiplierM2]
			[Circle2Sensor])
		(hasInput [Circle2Inputs])
		(hasOutput [Circle2Output])
		(hasSensorValues [Circle2Sensor]))

	([ElectricCircuit3] of  ElectricCircuit

		(has
			[AdderA1]
			[AdderA2]
			[MultiplierM1]
			[MultiplierM2]
			[Circle3Sensor1])
		(hasInput [Circle3Inputs])
		(hasOutput [Circle3Output])
		(hasSensorValues [Circle3Sensor1]))

	([ElectricCircuit4] of  ElectricCircuit

		(has
			[AdderA1]
			[AdderA2]
			[MultiplierM1]
			[MultiplierM2]
			[Circle4Sensor1])
		(hasInput [Circle4Inputs])
		(hasOutput [Circle4Output])
		(hasSensorValues [Circle4Inputs]))

	([ElectricCircuit5] of  ElectricCircuit

		(has
			[AdderA1]
			[AdderA2]
			[MultiplierM1]
			[MultiplierM2]
			[Circle5Sensor1])
		(hasInput [Circle5Inputs])
		(hasOutput [Circle5Output])
		(hasSensorValues [Circle5Sensor1]))

	([ElectricCircuit6] of  ElectricCircuit

		(has
			[AdderA1]
			[AdderA2]
			[MultiplierM1]
			[MultiplierM2]
			[Circle6Sensor1])
		(hasInput [Circle6Inputs])
		(hasOutput [Circle6Output])
		(hasSensorValues [Circle6Sensor1]))

	([ElectricCircuit7] of  ElectricCircuit
	
		(has
			[AdderA1]
			[AdderA2]
			[MultiplierM1]
			[MultiplierM2]
			[Circle7Sensor1])
		(hasInput [Circle7Inputs])
		(hasOutput [Circle7Output])
		(hasSensorValues [Circle7Sensor1]))

	([ElectricCircuit8] of  ElectricCircuit

		(has
			[AdderA1]
			[AdderA2]
			[MultiplierM1]
			[MultiplierM2]
			[Circle8Sensor1])
		(hasInput [Circle8Inputs])
		(hasOutput [Circle8Output])
		(hasSensorValues [Circle8Sensor1]))

	([ElectricCircuit9] of  ElectricCircuit

		(has
			[AdderA1]
			[AdderA2]
			[MultiplierM1]
			[MultiplierM2]
			[Circle9Sensor1])
		(hasInput [Circle9Inputs])
		(hasOutput [Circle9Output])
		(hasSensorValues [Circle9Sensor1]))
	
	([ElectricCircuit10] of  ElectricCircuit

		(has
			[AdderA1]
			[AdderA2]
			[MultiplierM1]
			[MultiplierM2]
			[Circle10Sensor1])
		(hasInput [Circle9Inputs])
		(hasOutput [Circle10Output])
		(hasSensorValues [Circle10Sensor1]))
	
	([AdderA1] of  Adder

		(exit FALSE)
		(isEntered
			[Input1]
			[Input1]))

	([([AdderA2] of  Adder

		(exit TRUE)
		(isEntered
			[MultiplierM1]
			[MultiplierM2]))

	([MultiplierM1] of  Multiplier

		(exit FALSE)
		(isEntered [Input2]))

	([MultiplierM2] of  Multiplier

		(exit FALSE)
		(isEntered
			[Input3]
			[Input4]))

	([Circle1Input1] of  Value

		(equals 21))

	([Circle1Input2] of  Value
	
		(equals 28))

	([Circle1Input3] of  Value

		(equals 10))

	([Circle1Input4] of  Value

		(equals 25))

	([Circle2Input1] of  Value

		(equals 7))

	([Circle2Input2] of  Value

		(equals 25))

	([Circle2Input3] of  Value

		(equals 13))

	([Circle2Input4] of  Value

		(equals 15))

	([Circle3Input1] of  Value

		(equals 11))

	([Circle3Input2] of  Value

		(equals 17))

	([Circle3Input3] of  Value

		(equals 24))

	([Circle3Input4] of  Value

		(equals 31))

	([Circle4Input1] of  Value

		(equals 18))

	([Circle4Input2] of  Value

		(equals 11))

	([Circle4Input3] of  Value

		(equals 28))

	([Circle4Input4] of  Value

		(equals 21))

	([Circle5Input1] of  Value

		(equals 25))

	([Circle5Input2] of  Value

		(equals 24))

	([Circle5Input3] of  Value

		(equals 30))

	([Circle5Input4] of  Value

		(equals 10))

	([Circle6Input1] of  Value

		(equals 12))

	([Circle6Input2] of  Value

		(equals 19))

	([Circle6Input3] of  Value

		(equals 11))

	([Circle6Input4] of  Value

		(equals 19))

	([Circle7Input1] of  Value

		(equals 1))

	([Circle7Input2] of  Value

		(equals 31))

	([Circle7Input3] of  Value

		(equals 7))

	([Circle7Input4] of  Value

		(equals 22))

	([Circle8Input1] of  Value

		(equals 0))

	([Circle8Input2] of  Value

		(equals 31))

	([Circle8Input3] of  Value

		(equals 3))

	([Circle8Input4] of  Value

		(equals 23))

	([Circle9Input1] of  Value

		(equals 31))	

	([Circle9Input2] of  Value

		(equals 1))

	([Circle9Input3] of  Value

		(equals 6))

	([Circle9Input4] of  Value

		(equals 8))

	([Circle10Input1] of  Value

		(equals 6))

	([Circle10Input2] of  Value

		(equals 4))

	([Circle10Input3] of  Value

		(equals 25))

	([Circle10Input4] of  Value

		(equals 12))

	([Circle1Sensor1] of  Value
	
		(equals 10))

	([Circle1Sensor2] of  Value

		(equals 24))

	([Circle1Sensor3] of  Value

		(equals 26))

	([Circle2Sensor] of  Value

		(equals 0))

	([Circle2Sensor2] of  Value

		(equals 0))

	([Circle2Sensor3] of  Value

		(equals 3))

	([Circle3Sensor1] of  Value

		(equals 22))

	([Circle3Sensor2] of  Value

		(equals 6))

	([Circle3Sensor3] of  Value

		(equals 8))

	([Circle4Sensor1] of  Value

		(equals 4))

	([Circle4Sensor2] of  Value

		(equals 12))

	([Circle4Sensor3] of  Value

		(equals 12))

	([Circle5Sensor1] of  Value

		(equals 18))

	([Circle5Sensor2] of  Value

		(equals 16))

	([Circle5Sensor3] of  Value

		(equals 12))

	([Circle6Sensor1] of  Value

		(equals 8))

	([Circle6Sensor2] of  Value

		(equals 24))

	([Circle6Sensor3] of  Value

		(equals 17))

	([Circle7Sensor1] of  Value

		(equals 2))

	([Circle7Sensor2] of  Value

		(equals 0))

	([Circle7Sensor3] of  Value

		(equals 26))

	([Circle8Sensor1] of  Value

		(equals 0))

	([Circle8Sensor2] of  Value

		(equals 0))

	([Circle8Sensor3] of  Value

		(equals 0))

	([Circle9Sensor1] of  Value

		(equals 30))

	([Circle9Sensor2] of  Value

		(equals 30))

	([Circle9Sensor3] of  Value

		(equals 0))

	([Circle10Sensor1] of  Value

		(equals 12))

	([Circle10Sensor2] of  Value

		(equals 31))

	([Circle10Sensor3] of  Value

		(equals 12))

	([Circle1Output] of  Value

		(equals 18))

	([Circle2Output] of  Value

		(equals 3))

	([Circle3Output] of  Value

		(equals 14))

	([Circle4Output] of  Value
	
		(equals 0))

	([Circle5Output] of  Value

		(equals 12))

	([Circle6Output] of  Value

		(equals 9))

	([Circle7Output] of  Value

		(equals 26))
	
	([Circle8Output] of  Value

		(equals 0))

	([Circle9Output] of  Value

		(equals 30))

	([Circle10Output] of  Value

		(equals 28))

	([Circle1Inputs] of  ElectricCircuitInputValues

		(hasFourValues
			[Circle1Input1]
			[Circle1Input2]
			[Circle1Input3]
			[Circle1Input4]))

	
	([Circle2Inputs] of  ElectricCircuitInputValues

		(hasFourValues
			[Circle2Input1]
			[Circle2Input2]
			[Circle2Input3]
			[Circle2Input4]))
	
	([Circle3Inputs] of  ElectricCircuitInputValues

		(hasFourValues
			[Circle3Input1]
			[Circle3Input2]
			[Circle3Input3]
			[Circle3Input4]))

	([Circle4Inputs] of  ElectricCircuitInputValues

		(hasFourValues
			[Circle4Input1]
			[Circle4Input2]
			[Circle4Input3]
			[Circle4Input4]))

	([Circle5Inputs] of  ElectricCircuitInputValues

		(hasFourValues
			[Circle5Input1]
			[Circle5Input2]
			[Circle5Input3]
			[Circle5Input4]))

	([Circle6Inputs] of  ElectricCircuitInputValues
	
		(hasFourValues
			[Circle6Input1]
			[Circle6Input2]
			[Circle6Input3]
			[Circle6Input4]))

	([Circle7Inputs] of  ElectricCircuitInputValues

		(hasFourValues
			[Circle7Input1]
			[Circle7Input2]
			[Circle7Input3]
			[Circle7Input4]))

	([Circle8Inputs] of  ElectricCircuitInputValues

		(hasFourValues
			[Circle8Input1]
			[Circle8Input2]
			[Circle8Input3]
			[Circle8Input4]))

	([Circle9Inputs] of  ElectricCircuitInputValues

		(hasFourValues
			[Circle9Input1]
			[Circle9Input2]
			[Circle9Input3]
			[Circle9Input4]))

	([Circle10Inputs] of  ElectricCircuitInputValues
	
		(hasFourValues
			[Circle10Input1]
			[Circle10Input2]
			[Circle10Input3]
			[Circle10Input4]))

	([Circle1Sensor] of  SensorsValues

		(haveInput
			[Circle1Sensor1]
			[Circle1Sensor2]
			[Circle1Sensor3]))

	([Circle2Sensor] of  SensorsValues

		(haveInput
			[Circle2Sensor1]
			[Circle2Sensor2]
			[Circle2Sensor3]))

	([Circle3Sensor] of  SensorsValues

		(haveInput
			[Circle3Sensor1]
			[Circle3Sensor2]
			[Circle3Sensor3]))

	([Circle4Sensor] of  SensorsValues

		(haveInput
			[Circle4Sensor1]
			[Circle4Sensor2]
			[Circle4Sensor3]))

	([Circle5Sensor] of  SensorsValues

		(haveInput
			[Circuits_Class30061]
			[Circuits_Class30062]
			[Circuits_Class30063]))

	([Circle6Sensor] of  SensorsValues

		(haveInput
			[Circuits_Class30064]
			[Circuits_Class30065]
			[Circuits_Class30066]))

	([Circle7Sensor] of  SensorsValues

		(haveInput
			[Circuits_Class30067]
			[Circuits_Class30068]
			[Circuits_Class30069]))

	([Circle8Sensor] of  SensorsValues

		(haveInput
			[Circuits_Class30070]
			[Circuits_Class30071]
			[Circuits_Class30072]))

	([Circle9Sensor] of  SensorsValues

		(haveInput
			[Circuits_Class30073]
			[Circuits_Class30074]
			[Circuits_Class30075]))

	([Circle10Sensor] of  SensorsValues

		(haveInput
			[Circuits_Class30076]
			[Circuits_Class30077]
			[Circuits_Class30078]))
	
	([Input1] of  Input
	
		(enters [Circuits_Class2_AdderA1]))

	([Input2] of  Input

		(enters [MultiplierM1]))

	([Input3] of  Input

		(enters [MultiplierM2]))

	([Input4] of  Input

		(enters [MultiplierM2]))

	([Circuits_Class30336] of  Sensor

		(countsIntegratedCircuit [AdderA1]))

	([Circuits_Class30337] of  Sensor

		(countsIntegratedCircuit [MultiplierM1]))

	([Circuits_Class30338] of  Sensor

		(countsIntegratedCircuit [MultiplierM2]))

	([Circuits_Class30343] of  %3APAL-CONSTRAINT
	)
