:set -XNoImplicitPrelude
:m GHC.Num
:m GHC.Types
:m GHC.Classes
import qualified Prelude as XY
import qualified Graphics.Rendering.Chart.Easy as EP
import Data.Colour
import Data.Colour.Names

fmap = XY.fmap

plotr f s i e = EP.toRenderable(do
    EP.setColors [opaque blue, opaque red]
    EP.plot (EP.line "" [d])
    EP.plot (EP.points "" d))
    where d = [(x,f(x)) | x <- [s,s+i..e]]
plot f = plotr f 0 1 10

draw shapes = EP.toRenderable (do
    (EP..=) ((XY..) EP.layout_y_axis EP.laxis_generate) (EP.scaledAxis EP.def (0,10) )
    (EP..=) ((XY..) EP.layout_x_axis EP.laxis_generate) (EP.scaledAxis EP.def (0,15) )
    EP.plot (EP.line "" (XY.map (\x ->(XY.last x):x) shapes)))
