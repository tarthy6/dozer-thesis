import woo
from woo import utils
from woo.core import *
from woo.dem import *
from woo import plot
from woo import *
import woo.log
woo.log.setLevel('LawTester',woo.log.INFO)
woo.log.setLevel('Law2_L6Geom_FrictPhys_Pellet',woo.log.TRACE)
m=FrictMat(density=1e3,young=1e4,ktDivKn=.2,tanPhi=.5)
S=woo.master.scene=Scene(fields=[DemField(gravity=(0,0,0))])
S.dem.par.append([
	utils.sphere((0,0,0),.5,fixed=False,wire=True,mat=m),
	utils.sphere((0,1.001,0),.5,fixed=False,wire=True,mat=m)
])
S.dem.collectNodes()
# S.engines=utils.defaultEngines(damping=.0,cp2=Cp2_FrictMat_FrictPhys(),law=Law2_L6Geom_FrictPhys_IdealElPl())+[
S.engines=utils.defaultEngines(damping=.0,cp2=Cp2_FrictMat_HertzPhys(en=.5,gamma=0.),law=Law2_L6Geom_HertzPhys_DMT())+[
	LawTester(ids=(0,1),abWeight=.3,smooth=1e-4,stages=[
			LawTesterStage(values=(-1.,0,0,0,0,0),whats='ivv...',until='stage.broken',done='print "Contact created and broken with v0=1m/s"'),
			LawTesterStage(values=(-.1,0,0,0,0,0),whats='ivv...',until='stage.broken',done='print "Contact created and broken with v0=.1m/s"'),
			LawTesterStage(values=(-.01,0,0,0,0,0),whats='ivv...',until='stage.broken',done='print "Contact created and broken with v0=.01m/s"'),
			LawTesterStage(values=(-.001,0,0,0,0,0),whats='ivv...',until='stage.broken',done='print "Contact created and broken with v0=.001m/s"'),
		],
		done='tester.dead=True; S.stop(); print "Everything done, making myself dead and pausing."',
		label='tester'
	),
	PyRunner(1,'import woo; dd={}; dd.update(**S.lab.tester.fuv()); dd.update(**S.energy); S.plot.addData(i=S.step,dist=(S.dem.par[0].pos-S.dem.par[1].pos).norm(),t=S.time,**dd)'),
]
S.dt=1e-3
#S.pause()
S.trackEnergy=True
#plot.plots={' i':(('fErrRel_xx','k'),None,'fErrAbs_xx'),'i ':('dist',None),' i ':(S.energy),'   i':('f_xx',None,'f_yy','f_zz'),'  i':('u_xx',None,'u_yy','u_zz'),'i  ':('u_yz',None,'u_zx','u_xy')}
S.plot.plots={'i':('u_xx',None,'f_xx'),'u_xx':('f_xx',),'i ':('S.energy.keys()',)}
S.plot.plot()
S.saveTmp()
#S.run()
S.one()
#O.reload()
