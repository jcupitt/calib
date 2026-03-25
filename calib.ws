<?xml version="1.0"?>
<root xmlns="http://www.vips.ecs.soton.ac.uk/nip/9.1.0">
  <Workspace view="WORKSPACE_MODE_REGULAR" scale="1" offset="0" locked="false" local_defs="// local definitions for this tab&#10;" name="tab2" filename="$CWD/calib.ws" major="9" minor="0">
    <Column x="10" y="5" open="true" selected="false" sform="false" next="3" name="A" caption="to linear RGB">
      <Subcolumn vislevel="3">
        <Row popup="false" name="A1">
          <Rhs vislevel="1" flags="1">
            <iImage show_status="false" show_convert="false"/>
            <Subcolumn vislevel="0"/>
            <iText formula="Image_file &quot;$CWD/theo.jpg&quot;"/>
          </Rhs>
        </Row>
        <Row popup="false" name="A2">
          <Rhs vislevel="3" flags="7">
            <iImage show_status="false" show_convert="false"/>
            <Subcolumn vislevel="1"/>
            <iText formula="Colour_convert_item.scRGB_item.action A1"/>
          </Rhs>
        </Row>
      </Subcolumn>
    </Column>
    <Column x="419" y="5" open="true" selected="false" sform="false" next="6" name="B" caption="linear sRGB to XYZ">
      <Subcolumn vislevel="3">
        <Row popup="false" name="B2">
          <Rhs vislevel="1" flags="4">
            <iText formula="&quot;sRGB primaries -&gt; xyz:&quot;"/>
          </Rhs>
        </Row>
        <Row popup="false" name="B1">
          <Rhs vislevel="1" flags="1">
            <Matrix valuen="9" value0="0.41239999999999999" value1="0.35759999999999997" value2="0.18049999999999999" value3="0.21260000000000001" value4="0.71519999999999995" value5="0.0722" value6="0.019300000000000001" value7="0.1192" value8="0.95050000000000001" width="3" height="3" scale="1" offset="0" filename="" display="0"/>
            <Subcolumn vislevel="0"/>
            <iText formula="Matrix_build_item.Plain_item.action"/>
          </Rhs>
        </Row>
        <Row popup="false" name="B3">
          <Rhs vislevel="2" flags="5">
            <iImage show_status="false" show_convert="false"/>
            <Subcolumn vislevel="0"/>
            <iText formula="100 * recomb B1 A2"/>
          </Rhs>
        </Row>
        <Row popup="false" name="B5">
          <Rhs vislevel="3" flags="7">
            <iImage show_status="false" show_convert="false"/>
            <Subcolumn vislevel="1"/>
            <iText formula="Colour_tag_item.XYZ_item.action B3"/>
          </Rhs>
        </Row>
      </Subcolumn>
    </Column>
    <Column x="1781" y="5" open="true" selected="false" sform="false" next="3" name="C" caption="apply sRGB gamma">
      <Subcolumn vislevel="3">
        <Row popup="false" name="C2">
          <Rhs vislevel="2" flags="5">
            <iImage show_status="false" show_convert="false"/>
            <Subcolumn vislevel="0"/>
            <iText formula="G1"/>
          </Rhs>
        </Row>
        <Row popup="false" name="C1">
          <Rhs vislevel="3" flags="7">
            <iImage show_status="false" show_convert="false"/>
            <Subcolumn vislevel="1"/>
            <iText formula="Colour_convert_item.sRGB_item.action  G1"/>
          </Rhs>
        </Row>
      </Subcolumn>
    </Column>
    <Column x="866" y="5" open="true" selected="false" sform="false" next="7" name="D" caption="XYZ to linear P3">
      <Subcolumn vislevel="3">
        <Row popup="false" name="D1">
          <Rhs vislevel="1" flags="4">
            <iText formula="&quot;P3 primaries -&gt; xyz:&quot;"/>
          </Rhs>
        </Row>
        <Row popup="false" name="D2">
          <Rhs vislevel="1" flags="1">
            <Matrix valuen="9" value0="0.48699999999999999" value1="0.26600000000000001" value2="0.19800000000000001" value3="0.22900000000000001" value4="0.69199999999999995" value5="0.079000000000000001" value6="0" value7="0.044999999999999998" value8="1.044" width="3" height="3" scale="1" offset="0" filename="" display="0"/>
            <Subcolumn vislevel="0"/>
            <iText formula="Matrix_build_item.Plain_item.action"/>
          </Rhs>
        </Row>
        <Row popup="false" name="D6">
          <Rhs vislevel="1" flags="4">
            <iText formula="&quot;invert to get XYZ to P3:&quot;"/>
          </Rhs>
        </Row>
        <Row popup="false" name="D5">
          <Rhs vislevel="1" flags="1">
            <Matrix/>
            <Subcolumn vislevel="0"/>
            <iText formula="Matrix_invert_item.action D2"/>
          </Rhs>
        </Row>
        <Row popup="false" name="D3">
          <Rhs vislevel="2" flags="5">
            <iImage show_status="false" show_convert="false"/>
            <Subcolumn vislevel="0"/>
            <iText formula="recomb D5 (B5 / 100)"/>
          </Rhs>
        </Row>
        <Row popup="false" name="D4">
          <Rhs vislevel="3" flags="7">
            <iImage show_status="false" show_convert="false" scale="1" offset="0" page="0" falsecolour="false" mode="multipage"/>
            <Subcolumn vislevel="1">
              <Row name="dest">
                <Rhs vislevel="0" flags="4">
                  <iText/>
                </Rhs>
              </Row>
              <Row name="x">
                <Rhs vislevel="0" flags="4">
                  <iText/>
                </Rhs>
              </Row>
              <Row name="super">
                <Rhs vislevel="0" flags="4">
                  <iImage show_status="false" show_convert="false"/>
                  <Subcolumn vislevel="0"/>
                  <iText/>
                </Rhs>
              </Row>
              <Row name="to">
                <Rhs vislevel="1" flags="1">
                  <Option caption="Tag as" labelsn="12" labels0="Mono" labels1="sRGB" labels2="scRGB" labels3="RGB16" labels4="GREY16" labels5="Lab" labels6="LabQ" labels7="LabS" labels8="LCh" labels9="XYZ" labels10="Yxy" labels11="UCS" value="2"/>
                  <Subcolumn vislevel="0"/>
                  <iText/>
                </Rhs>
              </Row>
            </Subcolumn>
            <iText formula="Colour_tag_item.XYZ_item.action D3"/>
          </Rhs>
        </Row>
      </Subcolumn>
    </Column>
    <Column x="1781" y="353" open="true" selected="true" sform="false" next="2" name="E" caption="side by side">
      <Subcolumn vislevel="3">
        <Row popup="false" name="E1">
          <Rhs vislevel="3" flags="7">
            <iImage show_status="false" show_convert="false" scale="1" offset="0" page="0" falsecolour="false" mode="multipage"/>
            <Subcolumn vislevel="1">
              <Row name="a">
                <Rhs vislevel="0" flags="4">
                  <iText/>
                </Rhs>
              </Row>
              <Row name="b">
                <Rhs vislevel="3" flags="4">
                  <iText/>
                </Rhs>
              </Row>
              <Row name="super">
                <Rhs vislevel="0" flags="4">
                  <iImage show_status="false" show_convert="false"/>
                  <Subcolumn vislevel="0"/>
                  <iText/>
                </Rhs>
              </Row>
              <Row name="shim">
                <Rhs vislevel="1" flags="1">
                  <Slider caption="Spacing" from="0" to="100" value="40"/>
                  <Subcolumn vislevel="0"/>
                  <iText/>
                </Rhs>
              </Row>
              <Row name="bg_colour">
                <Rhs vislevel="1" flags="1">
                  <Expression caption="Background colour"/>
                  <Subcolumn vislevel="0"/>
                  <iText/>
                </Rhs>
              </Row>
              <Row name="align">
                <Rhs vislevel="1" flags="1">
                  <Option/>
                  <Subcolumn vislevel="0"/>
                  <iText/>
                </Rhs>
              </Row>
            </Subcolumn>
            <iText formula="Image_join_item.Left_right_item.action A1 C1"/>
          </Rhs>
        </Row>
      </Subcolumn>
    </Column>
    <Column x="1313" y="5" open="true" selected="false" sform="false" next="2" name="G" caption="XYZ equi energy to sRGB">
      <Subcolumn vislevel="3">
        <Row popup="false" name="G5">
          <Rhs vislevel="2" flags="5">
            <iImage show_status="false" show_convert="false"/>
            <Subcolumn vislevel="0"/>
            <iText formula="B5 / 100"/>
          </Rhs>
        </Row>
        <Row popup="false" name="G6">
          <Rhs vislevel="3" flags="7">
            <iImage show_status="false" show_convert="false" scale="1" offset="0" page="0" falsecolour="false" mode="multipage"/>
            <Subcolumn vislevel="1">
              <Row name="dest">
                <Rhs vislevel="0" flags="4">
                  <iText/>
                </Rhs>
              </Row>
              <Row name="x">
                <Rhs vislevel="0" flags="4">
                  <iText/>
                </Rhs>
              </Row>
              <Row name="super">
                <Rhs vislevel="0" flags="4">
                  <iImage show_status="false" show_convert="false"/>
                  <Subcolumn vislevel="0"/>
                  <iText/>
                </Rhs>
              </Row>
              <Row name="to">
                <Rhs vislevel="1" flags="1">
                  <Option caption="Tag as" labelsn="12" labels0="Mono" labels1="sRGB" labels2="scRGB" labels3="RGB16" labels4="GREY16" labels5="Lab" labels6="LabQ" labels7="LabS" labels8="LCh" labels9="XYZ" labels10="Yxy" labels11="UCS" value="2"/>
                  <Subcolumn vislevel="0"/>
                  <iText/>
                </Rhs>
              </Row>
            </Subcolumn>
            <iText formula="Colour_tag_item.XYZ_item.action G5"/>
          </Rhs>
        </Row>
        <Row popup="false" name="G1">
          <Rhs vislevel="3" flags="7">
            <iImage show_status="false" show_convert="false" scale="1" offset="0" page="0" falsecolour="false" mode="multipage"/>
            <Subcolumn vislevel="1">
              <Row name="x">
                <Rhs vislevel="3" flags="4">
                  <iText/>
                </Rhs>
              </Row>
              <Row name="super">
                <Rhs vislevel="0" flags="4">
                  <iImage show_status="false" show_convert="false"/>
                  <Subcolumn vislevel="0"/>
                  <iText/>
                </Rhs>
              </Row>
              <Row name="old_white">
                <Rhs vislevel="1" flags="1">
                  <Option caption="Old whitepoint" labelsn="10" labels0="D93" labels1="D75" labels2="D65" labels3="D55" labels4="D50" labels5="A" labels6="B" labels7="C" labels8="E" labels9="D3250" value="2"/>
                  <Subcolumn vislevel="0"/>
                  <iText/>
                </Rhs>
              </Row>
              <Row name="new_white">
                <Rhs vislevel="1" flags="1">
                  <Option caption="New whitepoint" labelsn="10" labels0="D93" labels1="D75" labels2="D65" labels3="D55" labels4="D50" labels5="A" labels6="B" labels7="C" labels8="E" labels9="D3250" value="8"/>
                  <Subcolumn vislevel="0"/>
                  <iText/>
                </Rhs>
              </Row>
            </Subcolumn>
            <iText formula="Colour_temperature_item.Whitepoint_item.action G6"/>
          </Rhs>
        </Row>
      </Subcolumn>
    </Column>
  </Workspace>
</root>
