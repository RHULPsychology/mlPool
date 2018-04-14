%%
pool.Type = 'Generic'; % for SGE
pool.JobStorageLocation = '';
pool.AdditionalProperties.AdditionalSubmitArgs = ''; % (for Generic/SGE)

%%
P = PoolClass(pool,'');
P.JobStorageLocation = fullfile(pwd,'log');
P.reqMemory = 2;
P.reqWalltime = 2;

%%
J = P.addJob;
J.addTask('test',@fprintf,{'%f',1.23})
J.Submit
