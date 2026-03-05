-------------------------------TRAMOS ENTRE ESTACIONES--------------------------------------------------------------

-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: FAR
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido PAR:  NGH <-- FAR <-- FAN
-- ---------------------------------
--FAN --> FAR, no se hace porque va de P.C. a P.C.

--FAR --> NGH, (Se haría si formara parte del proyecto)


-- Tramos de trayecto en sentido IMPAR:  NGH --> FAR --> FAN
-- ---------------------------------
--NGH --> FAR, (Se haría si formara parte del proyecto)

--FAR --> FAN, no se hace porque va de P.C. a P.C.


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: FAN
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido PAR:  FAR <-- FAN <-- TSS
-- ---------------------------------

-- TSS --> FAN

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'TSS_FAN_VC2','TSS',NULL,NULL,NULL,NULL,'E',NULL,'FAN','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
--Este CV lo dice ENR (Es como ADIF de Egipto) 
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'TSS_FAN_VC2','FAR_VTA882B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'TSS_FAN_VC2','TSH_VTA880B',NULL);

-- Tramos de RESET (Al ser de entrada NO es necesario)


-- Tramos de trayecto en sentido IMPAR:  FAR --> FAN --> TSS
-- ---------------------------------

-- FAN --> TSS 

-- Tramos de RESET

-- Tabla GRP_TRAMOS 
-- En estos casos es el cdv siguiente a la señal de entrada)
INSERT INTO GRP_TRAMOS VALUES (1,'FAN_TSS_VT11A','FAN',NULL,NULL,NULL,NULL,'E',NULL,'TSS','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'FAN_TSS_VT11A','FAR_VT11A',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: TSS
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par    FAN <-- TSS <-- TSH	
-- ---------------------------------

-- TSS --> FAN de salida
-- Tramos de reset

-- Tabla GRP_TRAMOS
-- CV de reset para la salida
INSERT INTO GRP_TRAMOS VALUES (1,'TSS_FAN_VT02_I','TSS',NULL,NULL,NULL,NULL,'E',NULL,'FAN','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'TSS_FAN_VT02_I','TSH_VT02_I',NULL);


-- Tramos de trayecto en sentido impar    FAN --> TSS --> TSH
-- ---------------------------------

-- FAN --> TSS

-- Tabla GRP_TRAMOS 
INSERT INTO GRP_TRAMOS VALUES (1,'FAN_TSS_VC1','FAN',NULL,NULL,NULL,NULL,'E',NULL,'TSS','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
-- Este CV lo dice ENR (Puede variar)
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'FAN_TSS_VC1','TSH_VTA873B',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: TSH
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par    TSS <-- TSH <-- SHO
-- ---------------------------------

-- SHO --> TSH

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'SHO_TSH_VC2','SHO',NULL,NULL,NULL,NULL,'E',NULL,'TSH','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
-- Este CV lo dice ENR (Puede variar)
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SHO_TSH_VC2','TSH_VTA866B',NULL);


-- Tramos de trayecto en sentido impar    TSS --> TSH --> SHO
-- ---------------------------------

-- TSH --> SHO

-- -- Tramos de reset
-- Tabla GRP_TRAMOS
-- En estos casos es el CV de entrada
INSERT INTO GRP_TRAMOS VALUES (1,'TSH_SHO_VT09A','TSH',NULL,NULL,NULL,NULL,'E',NULL,'SHO','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'TSH_SHO_VT09A','TSH_VT09A',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: SHO
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de Trayecto 
-- INSERT INTO GRP_TRAMOS VALUES (1,ID_TRAMO,ID_PUNTO_CONTROL,NULL,NULL,NULL,NULL,E_S,NULL,PC_SIGUIENTE,VIA,SENTIDO);
---------------------------------------------------------------------
-- Entrada (desde BYS) en sentido PAR  via 2
INSERT INTO GRP_TRAMOS VALUES (1,'BYS_SHO_VC2','BYS',NULL,NULL,NULL,NULL,'E',NULL,'SHO','2','PAR');

-- Entrada (desde TSH) en sentido IMPAR  via 1
INSERT INTO GRP_TRAMOS VALUES (1,'TSH_SHO_VC1','TSH',NULL,NULL,NULL,NULL,'E',NULL,'SHO','1','IMPAR');


-- Tramos de Trayecto - CIRCUITOS_VIA 
-- INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,ID_TRAMO,COD_CV,NULL);
---------------------------------------------------------------------
-- Entrada (desde BYS) en sentido PAR
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'BYS_SHO_VC2','SHO_VTA850A',NULL);

-- Entrada (desde TSH) en sentido IMPAR
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'TSH_SHO_VC1','SHO_VTA857A',NULL);


---------------------------------------------------------------------
-- Tramos de reset (rutas de salida)
---------------------------------------------------------------------
-- Salidas sentido PAR
-- En estos casos es el CV de entrada
INSERT INTO GRP_TRAMOS VALUES (1,'SHO_TSH_VT02A','SHO',NULL,NULL,NULL,NULL,'E',NULL,'TSH','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SHO_TSH_VT02A','SHO_VT02A',NULL);


-- Salidas sentido IMPAR
INSERT INTO GRP_TRAMOS VALUES (1,'SHO_BYS_VT07A','SHO',NULL,NULL,NULL,NULL,'E',NULL,'BYS','1','IMPAR');

 -- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SHO_BYS_VT07A','SHO_VT07A',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: BYS
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido PAR:  SHO <-- BYS <-- BLY
-- -------------------------------------------------------

--BYS --> SHO

-- Tramos de RESET de salida

-- Tabla GRP_TRAMOS 
-- En estos casos es el cdv siguiente a la señal de entrada
INSERT INTO GRP_TRAMOS VALUES (1,'BYS_SHO_VT02A','BYS',NULL,NULL,NULL,NULL,'E',NULL,'SHO','2','PAR'); 

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'BYS_SHO_VT02A','BLY_VT02A',NULL); 


-- Tramos de trayecto en sentido IMPAR:  SHO --> BYS --> BLY
-- ---------------------------------

--SHO --> BYS de entrada

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'SHO_BYS_VC1','SHO',NULL,NULL,NULL,NULL,'E',NULL,'BYS','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA 
-- Este CV lo dice ENR 
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SHO_BYS_VC1','SHO_VTA843B',NULL); 


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: BLY
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido PAR:  BYS <-- BLY <-- BRD
-- ---------------------------------

-- BRD --> BLY

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'BRD_BLY_VC2','BRD',NULL,NULL,NULL,NULL,'E',NULL,'BLY','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
--Este CV lo dice ENR (Es como ADIF de Egipto) 
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'BRD_BLY_VC2','BRD_VTA834B',NULL);


-- Tramos de trayecto en sentido IMPAR:  BYS --> BLY --> BRD
-- ---------------------------------

-- BLY --> BRD, de salida

-- Tramos de RESET

-- Tabla GRP_TRAMOS 
-- En estos casos es el cdv siguiente a la señal de entrada)
INSERT INTO GRP_TRAMOS VALUES (1,'BLY_BRD_VT09A','BLY',NULL,NULL,NULL,NULL,'E',NULL,'BRD','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'BLY_BRD_VT09A','BLY_VT09A',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: BRD
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par  BLY <-- BRD <-- BRN
-- ---------------------------------

-- BRD -> BLY

-- Tramos de reset

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'BRD_BLY_VT02A','BRD',NULL,NULL,NULL,NULL,'E',NULL,'BLY','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'BRD_BLY_VT02A','BRD_VT02A',NULL);


-- Tramos de trayecto en sentido impar  BLY -> BRD -> BRN
-- ---------------------------------

-- BLY -> BRD

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'BLY_BRD_VC1','BLY',NULL,NULL,NULL,NULL,'E',NULL,'BRD','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'BLY_BRD_VC1','BLY_VTA829B',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: BRN
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par  BRD <-- BRN <-- GRS
-- ---------------------------------

-- GRS -> BRN 

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'GRS_BRN_VC2','GRS',NULL,NULL,NULL,NULL,'E',NULL,'BRN','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'GRS_BRN_VC2','BRD_VTA822B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'GRS_BRN_VC2','BRD_VTA820A',NULL);



-- Tramos de trayecto en sentido impar  BRD -> BRN -> GRS
-- ---------------------------------

-- BRN -> GRS

-- Tramos de reset

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'BRN_GRS_VT07_I','BRN',NULL,NULL,NULL,NULL,'E',NULL,'GRS','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'BRN_GRS_VT07_I','BRD_VT07_I',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: GRS, GRG y GRN
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de Trayecto 
-- INSERT INTO GRP_TRAMOS VALUES (1,ID_TRAMO,ID_PUNTO_CONTROL,NULL,NULL,NULL,NULL,E_S,NULL,NULL,VIA,SENTIDO);
---------------------------------------------------------------------
-- Entrada (desde OSY) en sentido PAR
INSERT INTO GRP_TRAMOS VALUES (1,'OSY_GRN_VC2','OSY',NULL,NULL,NULL,NULL,'E',NULL,'GRN','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA (Bloqueo)
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'OSY_GRN_VC2','GRG_VTA808B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'OSY_GRN_VC2','OSY_VTA806A',NULL);



-- Entrada (desde BRN) en sentido IMPAR
INSERT INTO GRP_TRAMOS VALUES (1,'BRN_GRS_VC1','BRN',NULL,NULL,NULL,NULL,'E',NULL,'GRS','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA (Bloqueo)
-- INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'BRN_GRS_VC1','GRG_VTA813B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'BRN_GRS_VC1','BRD_VTA813B',NULL);


---------------------------------------------------------------------
-- Tramos de reset
---------------------------------------------------------------------
-- Salida de GRN a BRN en sentido PAR
INSERT INTO GRP_TRAMOS VALUES (1,'GRS_BRN_VT02A','GRS',NULL,NULL,NULL,NULL,'E',NULL,'BRN','2','PAR');

INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'GRS_BRN_VT02A','GRG_VT02A',NULL);

-- Salida de GRN a OSY en sentido PAR
INSERT INTO GRP_TRAMOS VALUES (1,'GRN_OSY_VT11_I','GRN',NULL,NULL,NULL,NULL,'E',NULL,'OSY','1','IMPAR');

INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'GRN_OSY_VT11_I','GRG_VT11_I',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: OSY
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido PAR:  GRN <-- OSY <-- OSN
-- -------------------------------------------------------

--OSY --> GRN

-- Tramos de RESET de salida

-- Tabla GRP_TRAMOS 
-- En estos casos es el cdv siguiente a la señal de entrada
INSERT INTO GRP_TRAMOS VALUES (1,'OSY_GRN_VT02A','OSY',NULL,NULL,NULL,NULL,'E',NULL,'GRN','2','PAR'); 

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'OSY_GRN_VT02A','OSY_VT02A',NULL); 


-- Tramos de trayecto en sentido IMPAR:  GRN --> OSY --> OSN
-- ---------------------------------
--GRN --> OSY de entrada

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'GRN_OSY_VC1','GRN',NULL,NULL,NULL,NULL,'E',NULL,'OSY','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA 
-- Este CV lo dice ENR 
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'GRN_OSY_VC1','OSY_VTA799B',NULL); 
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'GRN_OSY_VC1','GRG_VTA801A',NULL); 



-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: OSN
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido PAR:  OSY <-- OSN <-- MOS
-- ---------------------------------

-- MOS --> OSN

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'MOS_OSN_VC2','MOS',NULL,NULL,NULL,NULL,'E',NULL,'OSN','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
--Este CV lo dice ENR (Es como ADIF de Egipto) 
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MOS_OSN_VC2','OSY_VTA796B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MOS_OSN_VC2','MON_VTA794B',NULL);



-- Tramos de trayecto en sentido IMPAR:  OSY --> OSN --> MOS
-- ---------------------------------

-- OSN --> MOS, de salida

-- Tramos de RESET

-- Tabla GRP_TRAMOS 
-- En estos casos es el cdv siguiente a la señal de entrada)
INSERT INTO GRP_TRAMOS VALUES (1,'OSN_MOS_VT09A','OSN',NULL,NULL,NULL,NULL,'E',NULL,'MOS','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'OSN_MOS_VT09A','OSY_VT09A',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: MOS
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par   OSN  <-- MOS <-- MON
-- ---------------------------------

-- MOS --> OSN

-- Tramos de reset 
-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'MOS_OSN_VT02A','MOS',NULL,NULL,NULL,NULL,'E',NULL,'OSN','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MOS_OSN_VT02A','MON_VT02A',NULL);


-- Tramos de trayecto en sentido impar    OSN --> MOS --> MON
-- ---------------------------------

-- OSN --> MOS

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'OSN_MOS_VC1','OSN',NULL,NULL,NULL,NULL,'E',NULL,'MOS','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'OSN_MOS_VC1','OSY_VTA787B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'OSN_MOS_VC1','OSY_VTA787A',NULL);



-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: MON
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par    MOS <-- MON <-- BSS
-- ---------------------------------
-- BSS --> MON

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'BSS_MON_VC2','BSS',NULL,NULL,NULL,NULL,'E',NULL,'MON','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA (CV de disparo) (En este caso se encuentra en Balsafura)
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'BSS_MON_VC2','BLS_VTA782B',NULL);


-- Tramos de trayecto en sentido impar    MOS --> MON --> BSS
-- ---------------------------------

-- MON --> BSS

-- Tabla GRP_TRAMOS
-- CV de reset para la salida
INSERT INTO GRP_TRAMOS VALUES (1,'MON_BSS_VT09A','MON',NULL,NULL,NULL,NULL,'E',NULL,'BSS','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MON_BSS_VT09A','MON_VT09A',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTOS DE CONTROL: BSS, BLS y BSN
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de Trayecto 
-- INSERT INTO GRP_TRAMOS VALUES (1,ID_TRAMO,ID_PUNTO_CONTROL,NULL,NULL,NULL,NULL,E_S,NULL,PC_SIGUIENTE,VIA,SENTIDO);
---------------------------------------------------------------------
-- Entrada desde SHG en sentido PAR
INSERT INTO GRP_TRAMOS VALUES (1,'SHG_BSN_VC2','SHG',NULL,NULL,NULL,NULL,'E',NULL,'BSN','2','PAR');


-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA (Bloqueo)
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SHG_BSN_VC2','BLS_VTA766B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SHG_BSN_VC2','SHG_VTA766A',NULL);



-- Entrada desde MON en sentido IMPAR
INSERT INTO GRP_TRAMOS VALUES (1,'MON_BSS_VC1','MON',NULL,NULL,NULL,NULL,'E',NULL,'BSS','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA (Bloqueo)
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MON_BSS_VC1','BLS_VTA775B',NULL);MON_VTA775B
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MON_BSS_VC1','MON_VTA775A',NULL);



---------------------------------------------------------------------
-- Tramos de reset
---------------------------------------------------------------------
-- Salida de BSS a MON en sentido PAR  Via 2
INSERT INTO GRP_TRAMOS VALUES (1,'BSS_MON_VT02A','BSS',NULL,NULL,NULL,NULL,'E',NULL,'MON','2','PAR');

INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'BSS_MON_VT02A','BLS_VT02A',NULL);

-- Salida de BSN a SHG en sentido IMPAR  Via 1
INSERT INTO GRP_TRAMOS VALUES (1,'BSN_SHG_VT11A','BSN',NULL,NULL,NULL,NULL,'E',NULL,'SHG','1','IMPAR');


INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'BSN_SHG_VT11A','BLS_VT11A',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: SHG
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido PAR:  BSN <-- SHG <-- GES
-- -------------------------------------------------------

--GES --> SHG

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'GES_SHG_VC2','GES',NULL,NULL,NULL,NULL,'E',NULL,'SHG','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA 
-- Este CV lo dice ENR 
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'GES_SHG_VC2','GEZ_VT02B',NULL); 
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'GES_SHG_VC2','GEZ_VT02A',NULL); 


--SHG --> BSN

-- Tramos de RESET de salida

-- Tabla GRP_TRAMOS 
-- En estos casos es el cdv siguiente a la señal de entrada
INSERT INTO GRP_TRAMOS VALUES (1,'SHG_BSN_VT02A','SHG',NULL,NULL,NULL,NULL,'E',NULL,'BSN','2','PAR'); 

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SHG_BSN_VT02A','SHG_VT02A',NULL); 


-- Tramos de trayecto en sentido IMPAR:  BSN --> SHG --> GES
-- ---------------------------------

--BSN --> SHG de entrada

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'BSN_SHG_VC1','BSN',NULL,NULL,NULL,NULL,'E',NULL,'SHG','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA 
-- Este CV lo dice ENR 
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'BSN_SHG_VC1','BLS_VTA765B',NULL); 

--SHG --> GES

-- Tramos de RESET de salida

-- Tabla GRP_TRAMOS 
-- En estos casos es el cdv siguiente a la señal de entrada
INSERT INTO GRP_TRAMOS VALUES (1,'SHG_GES_VT07','SHG',NULL,NULL,NULL,NULL,'E',NULL,'GES','2','IMPAR'); 

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SHG_GES_VT07','SHG_VT07',NULL); 


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: GES
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido PAR	SHG <-- GES <-- GEZ
-- ---------------------------------

-- GES --> SHG

-- Tramos de reset
-- CV de reset para la salida
INSERT INTO GRP_TRAMOS VALUES (1,'GES_SHG_VT02A','GES',NULL,NULL,NULL,NULL,'E',NULL,'SHG','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'GES_SHG_VT02A','GEZ_VT02A',NULL);


-- Tramos de trayecto en sentido impar    SHG --> GES --> GEZ
-- ---------------------------------
--SHG --> GES 

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'SHG_GES_VC1','SHG',NULL,NULL,NULL,NULL,'E',NULL,'GES','1','IMPAR');


-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA (CV de disparo) (En este caso se encuentra en Sohag)
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SHG_GES_VC1','SHG_VT13B',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: GEZ
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par   GES <-- GEZ <-- MRG
-- ---------------------------------

-- MRG --> GEZ

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'MRG_GEZ_VC2','MRG',NULL,NULL,NULL,NULL,'E',NULL,'GEZ','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA (CV de disparo)
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MRG_GEZ_VC2','GEZ_VTA744B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MRG_GEZ_VC2','GEZ_VTA742B',NULL);



-- Tramos de trayecto en sentido impar    GES --> GEZ --> MRG
-- ---------------------------------

-- GEZ --> MRG

-- Tramos de reset 
-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'GEZ_MRG_VT09A','GEZ',NULL,NULL,NULL,NULL,'E',NULL,'MRG','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'GEZ_MRG_VT09A','GEZ_VT09A',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: MRG y MRN
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de Trayecto 
-- INSERT INTO GRP_TRAMOS VALUES (1,ID_TRAMO,ID_PUNTO_CONTROL,NULL,NULL,NULL,NULL,E_S,NULL,PC_SIGUIENTE,VIA,SENTIDO);
---------------------------------------------------------------------
-- Entrada desde THT a MRN en sentido PAR
INSERT INTO GRP_TRAMOS VALUES (1,'THT_MRN_VC2','THT',NULL,NULL,NULL,NULL,'E',NULL,'MRN','2','PAR');


-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA (Bloqueo)
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'THT_MRN_VC2','MRG_VTA726B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'THT_MRN_VC2','MRG_VTA726A',NULL);



-- Entrada desde GEZ a MRG en sentido IMPAR
INSERT INTO GRP_TRAMOS VALUES (1,'GEZ_MRG_VC1','GEZ',NULL,NULL,NULL,NULL,'E',NULL,'MRG','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA (Bloqueo)
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'GEZ_MRG_VC1','MRG_VTA731B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'GEZ_MRG_VC1','GEZ_VTA733B',NULL);



-- Tramos de reset
-- INSERT INTO GRP_TRAMOS VALUES (1,ID_TRAMO,ID_PUNTO_CONTROL,NULL,NULL,NULL,NULL,E_S,NULL,PC_SIGUIENTE,VIA,SENTIDO);
---------------------------------------------------------------------
-- Salida de MRG a GEZ en sentido PAR  Via 2
INSERT INTO GRP_TRAMOS VALUES (1,'MRG_GEZ_VT02A','MRG',NULL,NULL,NULL,NULL,'E',NULL,'GEZ','2','PAR');

INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MRG_GEZ_VT02A','MRG_VT02A',NULL);

-- Salida de MRN a THT en sentido IMPAR  Via 1
INSERT INTO GRP_TRAMOS VALUES (1,'MRN_THT_VT09A','MRN',NULL,NULL,NULL,NULL,'E',NULL,'THT','1','IMPAR');

INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MRN_THT_VT09A','MRG_VT09A',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: THT
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido PAR:  MRN <-- THT <-- MIS
-- -------------------------------------------------------

--MIS --> THT

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'MIS_THT_VC2','MIS',NULL,NULL,NULL,NULL,'E',NULL,'THT','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA 
-- Este CV lo dice ENR 
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MIS_THT_VC2','THT_VTA704B',NULL); 
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MIS_THT_VC2','THT_VTA702B',NULL); 


--THT --> MRN

-- Tramos de RESET de salida

-- Tabla GRP_TRAMOS 
-- En estos casos es el cdv siguiente a la señal de entrada
INSERT INTO GRP_TRAMOS VALUES (1,'THT_MRN_VT02A','THT',NULL,NULL,NULL,NULL,'E',NULL,'MRN','2','PAR'); 

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'THT_MRN_VT02A','THT_VT02A',NULL); 


-- Tramos de trayecto en sentido IMPAR:  MRN --> THT --> MIS
-- ---------------------------------

--MRN --> THT de entrada

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'MRN_THT_VC1','MRN',NULL,NULL,NULL,NULL,'E',NULL,'THT','1','IMPAR');


-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA 
-- Este CV lo dice ENR 
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MRN_THT_VC1','THT_VTA709B',NULL); 
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MRN_THT_VC1','THT_VTA713B',NULL); 



--THT --> MIS

-- Tramos de RESET de salida

-- Tabla GRP_TRAMOS 
-- En estos casos es el cdv siguiente a la señal de entrada
INSERT INTO GRP_TRAMOS VALUES (1,'THT_MIS_VT07A','THT',NULL,NULL,NULL,NULL,'E',NULL,'MIS','2','IMPAR'); 

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'THT_MIS_VT07A','THT_VT07A',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: MIS
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par  THT <-- MIS <-- MIN
-- ---------------------------------

-- MIS --> THT

-- Tramos de reset

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'MIS_THT_VT02A','MIS',NULL,NULL,NULL,NULL,'E',NULL,'THT','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MIS_THT_VT02A','TMA_VT02A',NULL);


-- Tramos de trayecto en sentido impar  THT -> MIS -> MIN
-- ---------------------------------

-- THT --> MIS

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'THT_MIS_VC1','THT',NULL,NULL,NULL,NULL,'E',NULL,'MIS','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'THT_MIS_VC1','TMA_VTA687B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'THT_MIS_VC1','TMA_VTA689B',NULL);



-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: MIN
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par  MIS <-- MIN <-- TMA
-- ---------------------------------

-- TMA --> MIN, no porque es P.C a P.C

-- MIN --> MIS, no porque es P.C a P.C


-- Tramos de trayecto en sentido impar  MIS -> MIN -> TMA
-- ---------------------------------

-- MIS --> MIN, no porque es P.C a P.C

-- MIN --> TMA, no porque es P.C a P.C


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: TMA
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par  MIN <-- TMA <-- TMN
-- ---------------------------------
-- TMN --> TMA, no porque es P.C a P.C

-- TMA --> MIN, no porque es P.C a P.C


-- Tramos de trayecto en sentido impar  MIN -> TMA -> TMN
-- ---------------------------------
-- MIN --> TMA, no porque es P.C a P.C

-- TMA --> TMN, no porque es P.C a P.C


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: TMN
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par  TMA <-- TMN <-- SDS
-- ---------------------------------

-- SDS --> TMN

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'SDS_TMN_VC2','SDS',NULL,NULL,NULL,NULL,'E',NULL,'TMN','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SDS_TMN_VC2','TMA_VTA682B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SDS_TMN_VC2','SDF_VTA682B',NULL);



-- Tramos de trayecto en sentido impar  TMA -> TMN -> SDS
-- ---------------------------------

-- TMN --> SDS

-- Tramos de reset

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'TMN_SDS_VT23A','TMN',NULL,NULL,NULL,NULL,'E',NULL,'SDS','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'TMN_SDS_VT23A','TMA_VT23A',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: SDS
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par  TMN <-- SDS <-- SDF
-- ---------------------------------

-- SDS --> TMN

-- Tramos de reset

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'SDS_TMN_VT02A','SDS',NULL,NULL,NULL,NULL,'E',NULL,'TMN','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SDS_TMN_VT02A','SDF_VT02A',NULL);


-- Tramos de trayecto en sentido impar   TMN -> SDS -> SDF
-- ---------------------------------

-- TMN --> SDS 

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'TMN_SDS_VC1','TMN',NULL,NULL,NULL,NULL,'E',NULL,'SDS','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'TMN_SDS_VC1','TMA_VTA675B',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: SDF
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par  SDS <-- SDF <-- TIG
-- ---------------------------------

-- TIG --> SDF

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'TIG_SDF_VC2','TIG',NULL,NULL,NULL,NULL,'E',NULL,'SDF','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'TIG_SDF_VC2','SDF_VTA668B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'TIG_SDF_VC2','SDF_VTA666B',NULL);



-- Tramos de trayecto en sentido impar  SDS -> SDF -> TIG
-- ---------------------------------

-- SDF --> TIG

-- Tramos de reset

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'SDF_TIG_VT09A','SDF',NULL,NULL,NULL,NULL,'E',NULL,'TIG','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SDF_TIG_VT09A','SDF_VT09A',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: TIG 
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par  SDF <-- TIG <-- TIN
-- ---------------------------------

-- TIG --> SDF

-- Tramos de reset

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'TIG_SDF_VT02_I','TIG',NULL,NULL,NULL,NULL,'E',NULL,'SDF','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'TIG_SDF_VT02_I','TIG_VT02_I',NULL);


-- Tramos de trayecto en sentido impar  SDF -> TIG -> TIN
-- ---------------------------------

-- SDF --> TIG

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'SDF_TIG_VC1','SDF',NULL,NULL,NULL,NULL,'E',NULL,'TIG','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SDF_TIG_VC1','TIG_VTA651B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'SDF_TIG_VC1','TIG_VTA653B',NULL);



-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: TIN
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido par  TIG <-- TIN <-- MUT
-- ---------------------------------

-- MUT --> TIN

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'MUT_TIN_VC2','MUT',NULL,NULL,NULL,NULL,'E',NULL,'TIN','2','PAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MUT_TIN_VC2','MUT_VTA644B',NULL);
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MUT_TIN_VC2','MUT_VTA642B',NULL);



-- Tramos de trayecto en sentido impar   TIG -> TIN -> MUT
-- ---------------------------------

-- TIN --> MUT

-- Tramos de reset

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'TIN_MUT_VT09A','TIN',NULL,NULL,NULL,NULL,'E',NULL,'MUT','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'TIN_MUT_VT09A','TIG_VT09A',NULL);


-- -----------------------------------------------------------------------------------------------------------------
-- PUNTO DE CONTROL: MUT
-- -----------------------------------------------------------------------------------------------------------------

-- Tramos de trayecto en sentido PAR:  TIN <-- MUT <-- SUT
-- -------------------------------------------------------

--SUT --> MUT, NO FORMA PARTE DEL PROYECTO

--MUT --> TIN

-- Tramos de RESET de salida

-- Tabla GRP_TRAMOS 
-- En estos casos es el cdv siguiente a la señal de entrada
INSERT INTO GRP_TRAMOS VALUES (1,'MUT_TIN_VT02A','MUT',NULL,NULL,NULL,NULL,'E',NULL,'TIN','2','PAR'); 

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'MUT_TIN_VT02A','MUT_VT02A',NULL); 


-- Tramos de trayecto en sentido IMPAR:  TIN --> MUT --> SUT
-- ---------------------------------

--TIN --> MUT de entrada

-- Tabla GRP_TRAMOS
INSERT INTO GRP_TRAMOS VALUES (1,'TIN_MUT_VC1','TIN',NULL,NULL,NULL,NULL,'E',NULL,'MUT','1','IMPAR');

-- Tabla GRP_REL_TRAMOS_CIRCUITOS_VIA 
-- Este CV lo dice ENR 
--INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'TIN_MUT_VC1','MUT_VTA633B',NULL); 
INSERT INTO GRP_REL_TRAMOS_CIRCUITOS_VIA VALUES (1,'TIN_MUT_VC1','MUT_VTA633A',NULL); 



--MUT --> SUT, NO FORMA PARTE DEL PROYECTO



