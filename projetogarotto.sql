  CREATE TABLE resultados(
  id SERIAL PRIMARY KEY,
  temp_exec INT NOT NULL,
  alg_orden VARCHAR(50),
  tam_dados INT NOT NULL
  );
  
  CREATE TABLE hardware(
  id SERIAL PRIMARY KEY,
  cpu VARCHAR(50), 
  memoria VARCHAR(50),
  armazenamento VARCHAR(50),
  sistema_operacional VARCHAR(50)
  );
  
  CREATE TABLE resultados_hardware(
  id SERIAL PRIMARY KEY,
  hardware_id INT REFERENCES hardware(id),
  resultados_id INT REFERENCES resultados(id)
  );
  
  	-- Insert para o primeiro hardware
  	INSERT INTO public.hardware(cpu, memoria, armazenamento, sistema_operacional)
	VALUES ('i5-10500', '16 GB', '250GB SSD e 500GB HDD', 'Windows 10 Pro');

	-- Insert para o segundo hardware
	INSERT INTO public.hardware(cpu, memoria, armazenamento, sistema_operacional)
	VALUES ('i5-10300', '16GB', '500GB SSD', 'Windows 11 Pro');
	
	-- Insert para os resultados do primeiro hardware
	INSERT INTO public.resultados( temp_exec, alg_orden, tam_dados)
	VALUES (732500, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (733900, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (747100, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (872400, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (758200, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (760700, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (753800, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (738900, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (772500, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (742300, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (163200, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (199500, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (181400, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (175400, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (178200, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (185900, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (181800, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (180900, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (180800, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (193800, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (128100, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (160400, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (143600, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (163700, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (142900, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (146200, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (142800, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (144500, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (160600, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (139300, 'bubble sort', 100);


	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (569400, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (560600, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (584400, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (555300, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (636800, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (565300, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (576400, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (605800, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (677500, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (570600, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (161600, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (173700, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (1931, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (177800, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (175400, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (181100, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (180300, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (184300, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (181600, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (195400, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (134500, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (139200, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (141900, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (136200, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (146800, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (162500, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (143900, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (145800, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (147400, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (146700, 'merge sort', 100);
	
	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (554400, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (608200, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (558100, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (606100, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (566100, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (572200, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (576900, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (581200, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (580900, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (566200, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (185600, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (171400, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (172800, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (179500, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (172700, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (187800, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (231100, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (177400, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (184000, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (188400, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (137300, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (145300, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (133600, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (138200, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (150300, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (154700, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (159600, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (145300, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (167100, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (146700, 'quick sort', 100);

	-- Insert para os resultados do segundo hardware
	INSERT INTO public.resultados( temp_exec, alg_orden, tam_dados)
	VALUES (601300, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (629800, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (763300, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (598700, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (735700, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (565700, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (602100, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (623900, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (598800, 'bubble sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (673000, 'bubble sort', 10000);
	
	
	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (621700, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (559200, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (547000, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (566700, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (554200, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (519900, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (616400, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (511500, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (574500, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (589500, 'bubble sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (604000, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (551800, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (494900, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (619300, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (589300, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (603300, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (541600, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (520800, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (544400, 'bubble sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (536400, 'bubble sort', 100);
	
	
	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (594400, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (561800, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (535100, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (659900, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (630600, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (547400, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (624000, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (545300, 'merge sort', 10000);
	
	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (614000, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (583000, 'merge sort', 10000);
	
	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (677500, 'merge sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (570600, 'merge sort', 10000);
	

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (161700, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (123700, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (196310, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (179800, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (155600, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (201100, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (180200, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (184310, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (168600, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (146400, 'merge sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (263000, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (92000, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (89000, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (46200, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (116800, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (162500, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (112700, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (438500, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (636700, 'merge sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (154700, 'merge sort', 100);
	
	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (552110, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (671200, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (552000, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (476100, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (416100, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (532200, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (586900, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (681200, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (780900, 'quick sort', 10000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (466200, 'quick sort', 10000);
	
	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (145600, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (171200, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (171800, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (169500, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (175000, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (177100, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (131100, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (164400, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (176300, 'quick sort', 1000);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (180400, 'quick sort', 1000);
	
	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (127300, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (125300, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (153600, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (143200, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (134300, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (144000, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (162200, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (145300, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (143000, 'quick sort', 100);

	INSERT INTO public.resultados(temp_exec, alg_orden, tam_dados)
	VALUES (150100, 'quick sort', 100);



   	-- Inserindo registros na tabela resultados_hardware para o hardware de ID 1
	INSERT INTO resultados_hardware (resultados_id, hardware_id)
	SELECT id, 1 FROM resultados WHERE id BETWEEN 1 AND 90;

	-- Inserindo registros na tabela resultados_hardware para o hardware de ID 2
	INSERT INTO resultados_hardware (resultados_id, hardware_id)
	SELECT id, 2 FROM resultados WHERE id BETWEEN 91 AND 182;

	select * from resultados
	join resultados_hardware rh on rh.id = resultados.id
	inner join hardware h on rh.hardware_id = h.id 
