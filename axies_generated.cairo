%lang starknet
%builtins pedersen range_check

from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.alloc import alloc

## Cheers: https://github.com/andrepn/ratios_cairo/blob/main/contracts/ratio.cairo
struct Ratio:
    member n : felt
    member d : felt
end

## ====================

struct Asset_15516991204430101057:
    member generator : felt
    member version : felt
end

struct Array1ExtensionsUsed_3023078764766638200:
    member ele0 : felt
end

struct Array13Nodes_14056336049003661784:
    member ele0 : felt
    member ele1 : felt
    member ele2 : felt
    member ele3 : felt
    member ele4 : felt
    member ele5 : felt
    member ele6 : felt
    member ele7 : felt
    member ele8 : felt
    member ele9 : felt
    member ele10 : felt
    member ele11 : felt
    member ele12 : felt
end

struct Scenes_3795345599630735708:
    member name : felt
    member nodes : Array13Nodes_14056336049003661784
end

struct Array1Scenes_1672594158766687444:
    member ele0 : Scenes_3795345599630735708
end

struct Array4Rotation_16016927594972386445:
    member ele0 : Ratio
    member ele1 : Ratio
    member ele2 : Ratio
    member ele3 : Ratio
end

struct Array3Translation_17485459530686172143:
    member ele0 : Ratio
    member ele1 : Ratio
    member ele2 : Ratio
end

struct Nodes_16407473823678940112:
    member name : felt
    member rotation : Array4Rotation_16016927594972386445
    member translation : Array3Translation_17485459530686172143
end

struct Array3Scale_17485459530686172143:
    member ele0 : Ratio
    member ele1 : Ratio
    member ele2 : Ratio
end

struct Nodes_439440841350301057:
    member mesh : felt
    member name : felt
    member rotation : Array4Rotation_16016927594972386445
    member scale : Array3Scale_17485459530686172143
    member translation : Array3Translation_17485459530686172143
end

struct Array13Nodes_9041861570929633680:
    member ele0 : Nodes_16407473823678940112
    member ele1 : Nodes_439440841350301057
    member ele2 : Nodes_439440841350301057
    member ele3 : Nodes_439440841350301057
    member ele4 : Nodes_439440841350301057
    member ele5 : Nodes_439440841350301057
    member ele6 : Nodes_439440841350301057
    member ele7 : Nodes_439440841350301057
    member ele8 : Nodes_439440841350301057
    member ele9 : Nodes_439440841350301057
    member ele10 : Nodes_439440841350301057
    member ele11 : Nodes_439440841350301057
    member ele12 : Nodes_439440841350301057
end

struct Array4BaseColorFactor_6931795993199254628:
    member ele0 : Ratio
    member ele1 : felt
    member ele2 : Ratio
    member ele3 : felt
end

struct PbrMetallicRoughness_13501835724379800649:
    member baseColorFactor : Array4BaseColorFactor_6931795993199254628
    member metallicFactor : felt
    member roughnessFactor : Ratio
end

struct Materials_7815748242252365041:
    member doubleSided : felt
    member name : felt
    member pbrMetallicRoughness : PbrMetallicRoughness_13501835724379800649
end

struct KHR_materials_transmission_8300564567623902650:
    member transmissionFactor : Ratio
end

struct Extensions_17911498207163880735:
    member KHR_materials_transmission : KHR_materials_transmission_8300564567623902650
end

struct Array4BaseColorFactor_1503922427818679221:
    member ele0 : Ratio
    member ele1 : Ratio
    member ele2 : Ratio
    member ele3 : felt
end

struct PbrMetallicRoughness_7331086562503511269:
    member baseColorFactor : Array4BaseColorFactor_1503922427818679221
    member metallicFactor : felt
    member roughnessFactor : Ratio
end

struct Materials_4468146482302482650:
    member doubleSided : felt
    member extensions : Extensions_17911498207163880735
    member name : felt
    member pbrMetallicRoughness : PbrMetallicRoughness_7331086562503511269
end

struct Materials_952656552701073877:
    member doubleSided : felt
    member name : felt
    member pbrMetallicRoughness : PbrMetallicRoughness_7331086562503511269
end

struct Array10Materials_9743905945680044101:
    member ele0 : Materials_7815748242252365041
    member ele1 : Materials_4468146482302482650
    member ele2 : Materials_952656552701073877
    member ele3 : Materials_952656552701073877
    member ele4 : Materials_952656552701073877
    member ele5 : Materials_952656552701073877
    member ele6 : Materials_952656552701073877
    member ele7 : Materials_952656552701073877
    member ele8 : Materials_952656552701073877
    member ele9 : Materials_952656552701073877
end

struct Attributes_3688637138912505694:
    member POSITION : felt
    member NORMAL : felt
    member TEXCOORD_0 : felt
end

struct Primitives_18432683395104474796:
    member attributes : Attributes_3688637138912505694
    member indices : felt
    member material : felt
end

struct Array1Primitives_13498098561768200870:
    member ele0 : Primitives_18432683395104474796
end

struct Meshes_2239015062569869609:
    member name : felt
    member primitives : Array1Primitives_13498098561768200870
end

struct Array12Meshes_11249745471506239281:
    member ele0 : Meshes_2239015062569869609
    member ele1 : Meshes_2239015062569869609
    member ele2 : Meshes_2239015062569869609
    member ele3 : Meshes_2239015062569869609
    member ele4 : Meshes_2239015062569869609
    member ele5 : Meshes_2239015062569869609
    member ele6 : Meshes_2239015062569869609
    member ele7 : Meshes_2239015062569869609
    member ele8 : Meshes_2239015062569869609
    member ele9 : Meshes_2239015062569869609
    member ele10 : Meshes_2239015062569869609
    member ele11 : Meshes_2239015062569869609
end

struct Array3Max_17485459530686172143:
    member ele0 : Ratio
    member ele1 : Ratio
    member ele2 : Ratio
end

struct Array3Min_17485459530686172143:
    member ele0 : Ratio
    member ele1 : Ratio
    member ele2 : Ratio
end

struct Accessors_4059574448521175522:
    member bufferView : felt
    member componentType : felt
    member count : felt
    member max : Array3Max_17485459530686172143
    member min : Array3Min_17485459530686172143
    member type : felt
end

struct Accessors_10808715437781510715:
    member bufferView : felt
    member componentType : felt
    member count : felt
    member type : felt
end

struct Array47Accessors_15924034265267066853:
    member ele0 : Accessors_4059574448521175522
    member ele1 : Accessors_10808715437781510715
    member ele2 : Accessors_10808715437781510715
    member ele3 : Accessors_10808715437781510715
    member ele4 : Accessors_4059574448521175522
    member ele5 : Accessors_10808715437781510715
    member ele6 : Accessors_10808715437781510715
    member ele7 : Accessors_10808715437781510715
    member ele8 : Accessors_4059574448521175522
    member ele9 : Accessors_10808715437781510715
    member ele10 : Accessors_10808715437781510715
    member ele11 : Accessors_10808715437781510715
    member ele12 : Accessors_4059574448521175522
    member ele13 : Accessors_10808715437781510715
    member ele14 : Accessors_10808715437781510715
    member ele15 : Accessors_10808715437781510715
    member ele16 : Accessors_4059574448521175522
    member ele17 : Accessors_10808715437781510715
    member ele18 : Accessors_10808715437781510715
    member ele19 : Accessors_10808715437781510715
    member ele20 : Accessors_4059574448521175522
    member ele21 : Accessors_10808715437781510715
    member ele22 : Accessors_10808715437781510715
    member ele23 : Accessors_10808715437781510715
    member ele24 : Accessors_4059574448521175522
    member ele25 : Accessors_10808715437781510715
    member ele26 : Accessors_10808715437781510715
    member ele27 : Accessors_10808715437781510715
    member ele28 : Accessors_4059574448521175522
    member ele29 : Accessors_10808715437781510715
    member ele30 : Accessors_10808715437781510715
    member ele31 : Accessors_10808715437781510715
    member ele32 : Accessors_4059574448521175522
    member ele33 : Accessors_10808715437781510715
    member ele34 : Accessors_10808715437781510715
    member ele35 : Accessors_4059574448521175522
    member ele36 : Accessors_10808715437781510715
    member ele37 : Accessors_10808715437781510715
    member ele38 : Accessors_10808715437781510715
    member ele39 : Accessors_4059574448521175522
    member ele40 : Accessors_10808715437781510715
    member ele41 : Accessors_10808715437781510715
    member ele42 : Accessors_10808715437781510715
    member ele43 : Accessors_4059574448521175522
    member ele44 : Accessors_10808715437781510715
    member ele45 : Accessors_10808715437781510715
    member ele46 : Accessors_10808715437781510715
end

struct BufferViews_3688637138912505694:
    member buffer : felt
    member byteLength : felt
    member byteOffset : felt
end

struct Array47BufferViews_6918872184190647278:
    member ele0 : BufferViews_3688637138912505694
    member ele1 : BufferViews_3688637138912505694
    member ele2 : BufferViews_3688637138912505694
    member ele3 : BufferViews_3688637138912505694
    member ele4 : BufferViews_3688637138912505694
    member ele5 : BufferViews_3688637138912505694
    member ele6 : BufferViews_3688637138912505694
    member ele7 : BufferViews_3688637138912505694
    member ele8 : BufferViews_3688637138912505694
    member ele9 : BufferViews_3688637138912505694
    member ele10 : BufferViews_3688637138912505694
    member ele11 : BufferViews_3688637138912505694
    member ele12 : BufferViews_3688637138912505694
    member ele13 : BufferViews_3688637138912505694
    member ele14 : BufferViews_3688637138912505694
    member ele15 : BufferViews_3688637138912505694
    member ele16 : BufferViews_3688637138912505694
    member ele17 : BufferViews_3688637138912505694
    member ele18 : BufferViews_3688637138912505694
    member ele19 : BufferViews_3688637138912505694
    member ele20 : BufferViews_3688637138912505694
    member ele21 : BufferViews_3688637138912505694
    member ele22 : BufferViews_3688637138912505694
    member ele23 : BufferViews_3688637138912505694
    member ele24 : BufferViews_3688637138912505694
    member ele25 : BufferViews_3688637138912505694
    member ele26 : BufferViews_3688637138912505694
    member ele27 : BufferViews_3688637138912505694
    member ele28 : BufferViews_3688637138912505694
    member ele29 : BufferViews_3688637138912505694
    member ele30 : BufferViews_3688637138912505694
    member ele31 : BufferViews_3688637138912505694
    member ele32 : BufferViews_3688637138912505694
    member ele33 : BufferViews_3688637138912505694
    member ele34 : BufferViews_3688637138912505694
    member ele35 : BufferViews_3688637138912505694
    member ele36 : BufferViews_3688637138912505694
    member ele37 : BufferViews_3688637138912505694
    member ele38 : BufferViews_3688637138912505694
    member ele39 : BufferViews_3688637138912505694
    member ele40 : BufferViews_3688637138912505694
    member ele41 : BufferViews_3688637138912505694
    member ele42 : BufferViews_3688637138912505694
    member ele43 : BufferViews_3688637138912505694
    member ele44 : BufferViews_3688637138912505694
    member ele45 : BufferViews_3688637138912505694
    member ele46 : BufferViews_3688637138912505694
end

struct Buffers_15516991204430101057:
    member byteLength : felt
    member uri : felt
end

struct Array1Buffers_5008989350677271555:
    member ele0 : Buffers_15516991204430101057
end

struct GLTF:
    member asset : Asset_15516991204430101057
    member extensionsUsed : Array1ExtensionsUsed_3023078764766638200
    member scene : felt
    member scenes : Array1Scenes_1672594158766687444
    member nodes : Array13Nodes_9041861570929633680
    member materials : Array10Materials_9743905945680044101
    member meshes : Array12Meshes_11249745471506239281
    member accessors : Array47Accessors_15924034265267066853
    member bufferViews : Array47BufferViews_6918872184190647278
    member buffers : Array1Buffers_5008989350677271555
end

########################

## skipping the contructor function
## and bake the gltf into the @view functions directly
## may add constructor and storage_var in the future for a stateful contract

@view
func retrieve_gltf {
        syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr
    } () -> (gltf : GLTF):

    ## build up the struct from bottom up

    let gltf = GLTF (
        asset = Asset_15516991204430101057 (
                generator = 358149877349,
                version = 3288624
            ),

        extensionsUsed = Array1ExtensionsUsed_3023078764766638200 (
            ele0 = 358149877349
            ),

        scene = 0,
        scenes = Array1Scenes_1672594158766687444 (
            ele0 = Scenes_3795345599630735708 (
                        name = 358149877349,
                        nodes = Array13Nodes_14056336049003661784 (
                            ele0 = 0,
                            ele1 = 1,
                            ele2 = 2,
                            ele3 = 3,
                            ele4 = 4,
                            ele5 = 5,
                            ele6 = 6,
                            ele7 = 7,
                            ele8 = 8,
                            ele9 = 9,
                            ele10 = 10,
                            ele11 = 11,
                            ele12 = 12
                            )

                    )

            ),

        nodes = Array13Nodes_9041861570929633680 (
            ele0 = Nodes_16407473823678940112 (
                        name = 328185899124,
                        rotation = Array4Rotation_16016927594972386445 (
                            ele0 = Ratio (
                                        n = 105865,
                                        d = 376412
                                    ),

                            ele1 = Ratio (
                                        n = 211419,
                                        d = 308741
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871902627,
                                        d = 695575
                                    ),

                            ele3 = Ratio (
                                        n = 406605,
                                        d = 624976
                                    )

                            ),

                        translation = Array3Translation_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871973479,
                                        d = 124441
                                    ),

                            ele1 = Ratio (
                                        n = 2887039,
                                        d = 524288
                                    ),

                            ele2 = Ratio (
                                        n = 236474,
                                        d = 757769
                                    )

                            )

                    ),

            ele1 = Nodes_439440841350301057 (
                        mesh = 0,
                        name = 4860899559522447410,
                        rotation = Array4Rotation_16016927594972386445 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871997414,
                                        d = 591386
                                    ),

                            ele1 = Ratio (
                                        n = 684954,
                                        d = 932981
                                    ),

                            ele2 = Ratio (
                                        n = 25825,
                                        d = 935799
                                    ),

                            ele3 = Ratio (
                                        n = 549248,
                                        d = 810941
                                    )

                            ),

                        scale = Array3Scale_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 21609,
                                        d = 997097
                                    ),

                            ele1 = Ratio (
                                        n = 32269,
                                        d = 974308
                                    ),

                            ele2 = Ratio (
                                        n = 2904,
                                        d = 88105
                                    )

                            ),

                        translation = Array3Translation_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 352880,
                                        d = 873639
                                    ),

                            ele1 = Ratio (
                                        n = 55609,
                                        d = 855152
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871363339,
                                        d = 984689
                                    )

                            )

                    ),

            ele2 = Nodes_439440841350301057 (
                        mesh = 1,
                        name = 4860899559522447412,
                        rotation = Array4Rotation_16016927594972386445 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871997414,
                                        d = 591386
                                    ),

                            ele1 = Ratio (
                                        n = 684954,
                                        d = 932981
                                    ),

                            ele2 = Ratio (
                                        n = 25825,
                                        d = 935799
                                    ),

                            ele3 = Ratio (
                                        n = 549248,
                                        d = 810941
                                    )

                            ),

                        scale = Array3Scale_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 21609,
                                        d = 997097
                                    ),

                            ele1 = Ratio (
                                        n = 32269,
                                        d = 974308
                                    ),

                            ele2 = Ratio (
                                        n = 2904,
                                        d = 88105
                                    )

                            ),

                        translation = Array3Translation_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 352880,
                                        d = 873639
                                    ),

                            ele1 = Ratio (
                                        n = 55609,
                                        d = 855152
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871363339,
                                        d = 984689
                                    )

                            )

                    ),

            ele3 = Nodes_439440841350301057 (
                        mesh = 2,
                        name = 4860899559522447413,
                        rotation = Array4Rotation_16016927594972386445 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871997414,
                                        d = 591386
                                    ),

                            ele1 = Ratio (
                                        n = 684954,
                                        d = 932981
                                    ),

                            ele2 = Ratio (
                                        n = 25825,
                                        d = 935799
                                    ),

                            ele3 = Ratio (
                                        n = 549248,
                                        d = 810941
                                    )

                            ),

                        scale = Array3Scale_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 21609,
                                        d = 997097
                                    ),

                            ele1 = Ratio (
                                        n = 32269,
                                        d = 974308
                                    ),

                            ele2 = Ratio (
                                        n = 2904,
                                        d = 88105
                                    )

                            ),

                        translation = Array3Translation_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 352880,
                                        d = 873639
                                    ),

                            ele1 = Ratio (
                                        n = 55609,
                                        d = 855152
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871363339,
                                        d = 984689
                                    )

                            )

                    ),

            ele4 = Nodes_439440841350301057 (
                        mesh = 3,
                        name = 4860899559522447414,
                        rotation = Array4Rotation_16016927594972386445 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871997414,
                                        d = 591386
                                    ),

                            ele1 = Ratio (
                                        n = 684954,
                                        d = 932981
                                    ),

                            ele2 = Ratio (
                                        n = 25825,
                                        d = 935799
                                    ),

                            ele3 = Ratio (
                                        n = 549248,
                                        d = 810941
                                    )

                            ),

                        scale = Array3Scale_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 21609,
                                        d = 997097
                                    ),

                            ele1 = Ratio (
                                        n = 32269,
                                        d = 974308
                                    ),

                            ele2 = Ratio (
                                        n = 2904,
                                        d = 88105
                                    )

                            ),

                        translation = Array3Translation_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 352880,
                                        d = 873639
                                    ),

                            ele1 = Ratio (
                                        n = 55609,
                                        d = 855152
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871363339,
                                        d = 984689
                                    )

                            )

                    ),

            ele5 = Nodes_439440841350301057 (
                        mesh = 4,
                        name = 4860899559522447415,
                        rotation = Array4Rotation_16016927594972386445 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871997414,
                                        d = 591386
                                    ),

                            ele1 = Ratio (
                                        n = 684954,
                                        d = 932981
                                    ),

                            ele2 = Ratio (
                                        n = 25825,
                                        d = 935799
                                    ),

                            ele3 = Ratio (
                                        n = 549248,
                                        d = 810941
                                    )

                            ),

                        scale = Array3Scale_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 21609,
                                        d = 997097
                                    ),

                            ele1 = Ratio (
                                        n = 32269,
                                        d = 974308
                                    ),

                            ele2 = Ratio (
                                        n = 2904,
                                        d = 88105
                                    )

                            ),

                        translation = Array3Translation_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 352880,
                                        d = 873639
                                    ),

                            ele1 = Ratio (
                                        n = 55609,
                                        d = 855152
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871363339,
                                        d = 984689
                                    )

                            )

                    ),

            ele6 = Nodes_439440841350301057 (
                        mesh = 5,
                        name = 4860899559522447416,
                        rotation = Array4Rotation_16016927594972386445 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871997414,
                                        d = 591386
                                    ),

                            ele1 = Ratio (
                                        n = 684954,
                                        d = 932981
                                    ),

                            ele2 = Ratio (
                                        n = 25825,
                                        d = 935799
                                    ),

                            ele3 = Ratio (
                                        n = 549248,
                                        d = 810941
                                    )

                            ),

                        scale = Array3Scale_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 21609,
                                        d = 997097
                                    ),

                            ele1 = Ratio (
                                        n = 32269,
                                        d = 974308
                                    ),

                            ele2 = Ratio (
                                        n = 2904,
                                        d = 88105
                                    )

                            ),

                        translation = Array3Translation_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 352880,
                                        d = 873639
                                    ),

                            ele1 = Ratio (
                                        n = 55609,
                                        d = 855152
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871363339,
                                        d = 984689
                                    )

                            )

                    ),

            ele7 = Nodes_439440841350301057 (
                        mesh = 6,
                        name = 4860899559522448180,
                        rotation = Array4Rotation_16016927594972386445 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871997414,
                                        d = 591386
                                    ),

                            ele1 = Ratio (
                                        n = 684954,
                                        d = 932981
                                    ),

                            ele2 = Ratio (
                                        n = 25825,
                                        d = 935799
                                    ),

                            ele3 = Ratio (
                                        n = 549248,
                                        d = 810941
                                    )

                            ),

                        scale = Array3Scale_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 21609,
                                        d = 997097
                                    ),

                            ele1 = Ratio (
                                        n = 32269,
                                        d = 974308
                                    ),

                            ele2 = Ratio (
                                        n = 2904,
                                        d = 88105
                                    )

                            ),

                        translation = Array3Translation_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 352880,
                                        d = 873639
                                    ),

                            ele1 = Ratio (
                                        n = 55609,
                                        d = 855152
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871363339,
                                        d = 984689
                                    )

                            )

                    ),

            ele8 = Nodes_439440841350301057 (
                        mesh = 7,
                        name = 4860899559522447417,
                        rotation = Array4Rotation_16016927594972386445 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871965578,
                                        d = 965482
                                    ),

                            ele1 = Ratio (
                                        n = 561727,
                                        d = 758539
                                    ),

                            ele2 = Ratio (
                                        n = 17165,
                                        d = 444618
                                    ),

                            ele3 = Ratio (
                                        n = 638447,
                                        d = 955058
                                    )

                            ),

                        scale = Array3Scale_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 18545,
                                        d = 855716
                                    ),

                            ele1 = Ratio (
                                        n = 32438,
                                        d = 979411
                                    ),

                            ele2 = Ratio (
                                        n = 11009,
                                        d = 334004
                                    )

                            ),

                        translation = Array3Translation_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 366259,
                                        d = 923946
                                    ),

                            ele1 = Ratio (
                                        n = 55071,
                                        d = 524288
                                    ),

                            ele2 = Ratio (
                                        n = 74666,
                                        d = 110461
                                    )

                            )

                    ),

            ele9 = Nodes_439440841350301057 (
                        mesh = 8,
                        name = 4860899559522447664,
                        rotation = Array4Rotation_16016927594972386445 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871965578,
                                        d = 965482
                                    ),

                            ele1 = Ratio (
                                        n = 561727,
                                        d = 758539
                                    ),

                            ele2 = Ratio (
                                        n = 17165,
                                        d = 444618
                                    ),

                            ele3 = Ratio (
                                        n = 638447,
                                        d = 955058
                                    )

                            ),

                        scale = Array3Scale_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 18545,
                                        d = 855716
                                    ),

                            ele1 = Ratio (
                                        n = 32438,
                                        d = 979411
                                    ),

                            ele2 = Ratio (
                                        n = 11009,
                                        d = 334004
                                    )

                            ),

                        translation = Array3Translation_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 366259,
                                        d = 923946
                                    ),

                            ele1 = Ratio (
                                        n = 55071,
                                        d = 524288
                                    ),

                            ele2 = Ratio (
                                        n = 74666,
                                        d = 110461
                                    )

                            )

                    ),

            ele10 = Nodes_439440841350301057 (
                        mesh = 9,
                        name = 4860899559522447665,
                        rotation = Array4Rotation_16016927594972386445 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871965578,
                                        d = 965482
                                    ),

                            ele1 = Ratio (
                                        n = 561727,
                                        d = 758539
                                    ),

                            ele2 = Ratio (
                                        n = 17165,
                                        d = 444618
                                    ),

                            ele3 = Ratio (
                                        n = 638447,
                                        d = 955058
                                    )

                            ),

                        scale = Array3Scale_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 18545,
                                        d = 855716
                                    ),

                            ele1 = Ratio (
                                        n = 32438,
                                        d = 979411
                                    ),

                            ele2 = Ratio (
                                        n = 11009,
                                        d = 334004
                                    )

                            ),

                        translation = Array3Translation_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 366259,
                                        d = 923946
                                    ),

                            ele1 = Ratio (
                                        n = 55071,
                                        d = 524288
                                    ),

                            ele2 = Ratio (
                                        n = 74666,
                                        d = 110461
                                    )

                            )

                    ),

            ele11 = Nodes_439440841350301057 (
                        mesh = 10,
                        name = 4860899559522447666,
                        rotation = Array4Rotation_16016927594972386445 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871965578,
                                        d = 965482
                                    ),

                            ele1 = Ratio (
                                        n = 561727,
                                        d = 758539
                                    ),

                            ele2 = Ratio (
                                        n = 17165,
                                        d = 444618
                                    ),

                            ele3 = Ratio (
                                        n = 638447,
                                        d = 955058
                                    )

                            ),

                        scale = Array3Scale_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 18545,
                                        d = 855716
                                    ),

                            ele1 = Ratio (
                                        n = 32438,
                                        d = 979411
                                    ),

                            ele2 = Ratio (
                                        n = 11009,
                                        d = 334004
                                    )

                            ),

                        translation = Array3Translation_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 366259,
                                        d = 923946
                                    ),

                            ele1 = Ratio (
                                        n = 55071,
                                        d = 524288
                                    ),

                            ele2 = Ratio (
                                        n = 74666,
                                        d = 110461
                                    )

                            )

                    ),

            ele12 = Nodes_439440841350301057 (
                        mesh = 11,
                        name = 4860899559522447667,
                        rotation = Array4Rotation_16016927594972386445 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871965578,
                                        d = 965482
                                    ),

                            ele1 = Ratio (
                                        n = 561727,
                                        d = 758539
                                    ),

                            ele2 = Ratio (
                                        n = 17165,
                                        d = 444618
                                    ),

                            ele3 = Ratio (
                                        n = 638447,
                                        d = 955058
                                    )

                            ),

                        scale = Array3Scale_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 18545,
                                        d = 855716
                                    ),

                            ele1 = Ratio (
                                        n = 32438,
                                        d = 979411
                                    ),

                            ele2 = Ratio (
                                        n = 11009,
                                        d = 334004
                                    )

                            ),

                        translation = Array3Translation_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 366259,
                                        d = 923946
                                    ),

                            ele1 = Ratio (
                                        n = 55071,
                                        d = 524288
                                    ),

                            ele2 = Ratio (
                                        n = 74666,
                                        d = 110461
                                    )

                            )

                    )

            ),

        materials = Array10Materials_9743905945680044101 (
            ele0 = Materials_7815748242252365041 (
                        doubleSided = 1,
                        name = 23948161226623581355401818677,
                        pbrMetallicRoughness = PbrMetallicRoughness_13501835724379800649 (
                                baseColorFactor = Array4BaseColorFactor_6931795993199254628 (
                                    ele0 = Ratio (
                                                n = 667720,
                                                d = 709027
                                            ),

                                    ele1 = 1,
                                    ele2 = Ratio (
                                                n = 250436,
                                                d = 367769
                                            ),

                                    ele3 = 1
                                    ),

                                metallicFactor = 0,
                                roughnessFactor = Ratio (
                                        n = 1,
                                        d = 2
                                    )

                            )

                    ),

            ele1 = Materials_4468146482302482650 (
                        doubleSided = 1,
                        extensions = Extensions_17911498207163880735 (
                                KHR_materials_transmission = KHR_materials_transmission_8300564567623902650 (
                                        transmissionFactor = Ratio (
                                                n = 1,
                                                d = 10
                                            )

                                    )

                            ),

                        name = 23948161226623581355401818166,
                        pbrMetallicRoughness = PbrMetallicRoughness_7331086562503511269 (
                                baseColorFactor = Array4BaseColorFactor_1503922427818679221 (
                                    ele0 = Ratio (
                                                n = 115697,
                                                d = 302310
                                            ),

                                    ele1 = Ratio (
                                                n = 800041,
                                                d = 977149
                                            ),

                                    ele2 = Ratio (
                                                n = 794984,
                                                d = 809349
                                            ),

                                    ele3 = 1
                                    ),

                                metallicFactor = 0,
                                roughnessFactor = Ratio (
                                        n = 1,
                                        d = 2
                                    )

                            )

                    ),

            ele2 = Materials_952656552701073877 (
                        doubleSided = 1,
                        name = 23948161226623581355401818935,
                        pbrMetallicRoughness = PbrMetallicRoughness_7331086562503511269 (
                                baseColorFactor = Array4BaseColorFactor_1503922427818679221 (
                                    ele0 = Ratio (
                                                n = 222752,
                                                d = 226777
                                            ),

                                    ele1 = Ratio (
                                                n = 228245,
                                                d = 252588
                                            ),

                                    ele2 = Ratio (
                                                n = 363682,
                                                d = 823677
                                            ),

                                    ele3 = 1
                                    ),

                                metallicFactor = 0,
                                roughnessFactor = Ratio (
                                        n = 1,
                                        d = 2
                                    )

                            )

                    ),

            ele3 = Materials_952656552701073877 (
                        doubleSided = 1,
                        name = 23948161226623581355401818675,
                        pbrMetallicRoughness = PbrMetallicRoughness_7331086562503511269 (
                                baseColorFactor = Array4BaseColorFactor_1503922427818679221 (
                                    ele0 = Ratio (
                                                n = 105995,
                                                d = 481237
                                            ),

                                    ele1 = Ratio (
                                                n = 120135,
                                                d = 675853
                                            ),

                                    ele2 = Ratio (
                                                n = 91356,
                                                d = 529819
                                            ),

                                    ele3 = 1
                                    ),

                                metallicFactor = 0,
                                roughnessFactor = Ratio (
                                        n = 1,
                                        d = 2
                                    )

                            )

                    ),

            ele4 = Materials_952656552701073877 (
                        doubleSided = 1,
                        name = 23948161226623581355401818674,
                        pbrMetallicRoughness = PbrMetallicRoughness_7331086562503511269 (
                                baseColorFactor = Array4BaseColorFactor_1503922427818679221 (
                                    ele0 = Ratio (
                                                n = 187637,
                                                d = 224939
                                            ),

                                    ele1 = Ratio (
                                                n = 106885,
                                                d = 215492
                                            ),

                                    ele2 = Ratio (
                                                n = 1835,
                                                d = 4354
                                            ),

                                    ele3 = 1
                                    ),

                                metallicFactor = 0,
                                roughnessFactor = Ratio (
                                        n = 2,
                                        d = 5
                                    )

                            )

                    ),

            ele5 = Materials_952656552701073877 (
                        doubleSided = 1,
                        name = 23948161226623581355401818163,
                        pbrMetallicRoughness = PbrMetallicRoughness_7331086562503511269 (
                                baseColorFactor = Array4BaseColorFactor_1503922427818679221 (
                                    ele0 = Ratio (
                                                n = 105995,
                                                d = 481237
                                            ),

                                    ele1 = Ratio (
                                                n = 120135,
                                                d = 675853
                                            ),

                                    ele2 = Ratio (
                                                n = 91356,
                                                d = 529819
                                            ),

                                    ele3 = 1
                                    ),

                                metallicFactor = 0,
                                roughnessFactor = Ratio (
                                        n = 1,
                                        d = 2
                                    )

                            )

                    ),

            ele6 = Materials_952656552701073877 (
                        doubleSided = 1,
                        name = 23948161226623581355401818676,
                        pbrMetallicRoughness = PbrMetallicRoughness_7331086562503511269 (
                                baseColorFactor = Array4BaseColorFactor_1503922427818679221 (
                                    ele0 = Ratio (
                                                n = 492745,
                                                d = 579701
                                            ),

                                    ele1 = Ratio (
                                                n = 794984,
                                                d = 809349
                                            ),

                                    ele2 = Ratio (
                                                n = 398573,
                                                d = 846203
                                            ),

                                    ele3 = 1
                                    ),

                                metallicFactor = 0,
                                roughnessFactor = Ratio (
                                        n = 2,
                                        d = 5
                                    )

                            )

                    ),

            ele7 = Materials_952656552701073877 (
                        doubleSided = 1,
                        name = 23948161226623581355401819697,
                        pbrMetallicRoughness = PbrMetallicRoughness_7331086562503511269 (
                                baseColorFactor = Array4BaseColorFactor_1503922427818679221 (
                                    ele0 = Ratio (
                                                n = 794984,
                                                d = 809349
                                            ),

                                    ele1 = Ratio (
                                                n = 794984,
                                                d = 809349
                                            ),

                                    ele2 = Ratio (
                                                n = 794984,
                                                d = 809349
                                            ),

                                    ele3 = 1
                                    ),

                                metallicFactor = 0,
                                roughnessFactor = Ratio (
                                        n = 2,
                                        d = 5
                                    )

                            )

                    ),

            ele8 = Materials_952656552701073877 (
                        doubleSided = 1,
                        name = 23948161226623581355401818162,
                        pbrMetallicRoughness = PbrMetallicRoughness_7331086562503511269 (
                                baseColorFactor = Array4BaseColorFactor_1503922427818679221 (
                                    ele0 = Ratio (
                                                n = 187637,
                                                d = 224939
                                            ),

                                    ele1 = Ratio (
                                                n = 106885,
                                                d = 215492
                                            ),

                                    ele2 = Ratio (
                                                n = 1835,
                                                d = 4354
                                            ),

                                    ele3 = 1
                                    ),

                                metallicFactor = 0,
                                roughnessFactor = Ratio (
                                        n = 2,
                                        d = 5
                                    )

                            )

                    ),

            ele9 = Materials_952656552701073877 (
                        doubleSided = 1,
                        name = 23948161226623581355401818161,
                        pbrMetallicRoughness = PbrMetallicRoughness_7331086562503511269 (
                                baseColorFactor = Array4BaseColorFactor_1503922427818679221 (
                                    ele0 = Ratio (
                                                n = 222752,
                                                d = 226777
                                            ),

                                    ele1 = Ratio (
                                                n = 228245,
                                                d = 252588
                                            ),

                                    ele2 = Ratio (
                                                n = 363682,
                                                d = 823677
                                            ),

                                    ele3 = 1
                                    ),

                                metallicFactor = 0,
                                roughnessFactor = Ratio (
                                        n = 1,
                                        d = 2
                                    )

                            )

                    )

            ),

        meshes = Array12Meshes_11249745471506239281 (
            ele0 = Meshes_2239015062569869609 (
                        name = 4860899559522447410,
                        primitives = Array1Primitives_13498098561768200870 (
                            ele0 = Primitives_18432683395104474796 (
                                        attributes = Attributes_3688637138912505694 (
                                                POSITION = 0,
                                                NORMAL = 1,
                                                TEXCOORD_0 = 2
                                            ),

                                        indices = 3,
                                        material = 0
                                    )

                            )

                    ),

            ele1 = Meshes_2239015062569869609 (
                        name = 4860899559522447413,
                        primitives = Array1Primitives_13498098561768200870 (
                            ele0 = Primitives_18432683395104474796 (
                                        attributes = Attributes_3688637138912505694 (
                                                POSITION = 4,
                                                NORMAL = 5,
                                                TEXCOORD_0 = 6
                                            ),

                                        indices = 7,
                                        material = 1
                                    )

                            )

                    ),

            ele2 = Meshes_2239015062569869609 (
                        name = 4860899559522447414,
                        primitives = Array1Primitives_13498098561768200870 (
                            ele0 = Primitives_18432683395104474796 (
                                        attributes = Attributes_3688637138912505694 (
                                                POSITION = 8,
                                                NORMAL = 9,
                                                TEXCOORD_0 = 10
                                            ),

                                        indices = 11,
                                        material = 2
                                    )

                            )

                    ),

            ele3 = Meshes_2239015062569869609 (
                        name = 4860899559522447415,
                        primitives = Array1Primitives_13498098561768200870 (
                            ele0 = Primitives_18432683395104474796 (
                                        attributes = Attributes_3688637138912505694 (
                                                POSITION = 12,
                                                NORMAL = 13,
                                                TEXCOORD_0 = 14
                                            ),

                                        indices = 15,
                                        material = 3
                                    )

                            )

                    ),

            ele4 = Meshes_2239015062569869609 (
                        name = 4860899559522447416,
                        primitives = Array1Primitives_13498098561768200870 (
                            ele0 = Primitives_18432683395104474796 (
                                        attributes = Attributes_3688637138912505694 (
                                                POSITION = 16,
                                                NORMAL = 17,
                                                TEXCOORD_0 = 18
                                            ),

                                        indices = 19,
                                        material = 3
                                    )

                            )

                    ),

            ele5 = Meshes_2239015062569869609 (
                        name = 4860899559522447417,
                        primitives = Array1Primitives_13498098561768200870 (
                            ele0 = Primitives_18432683395104474796 (
                                        attributes = Attributes_3688637138912505694 (
                                                POSITION = 20,
                                                NORMAL = 21,
                                                TEXCOORD_0 = 22
                                            ),

                                        indices = 23,
                                        material = 2
                                    )

                            )

                    ),

            ele6 = Meshes_2239015062569869609 (
                        name = 4860899559522447664,
                        primitives = Array1Primitives_13498098561768200870 (
                            ele0 = Primitives_18432683395104474796 (
                                        attributes = Attributes_3688637138912505694 (
                                                POSITION = 24,
                                                NORMAL = 25,
                                                TEXCOORD_0 = 26
                                            ),

                                        indices = 27,
                                        material = 4
                                    )

                            )

                    ),

            ele7 = Meshes_2239015062569869609 (
                        name = 4860899559522447665,
                        primitives = Array1Primitives_13498098561768200870 (
                            ele0 = Primitives_18432683395104474796 (
                                        attributes = Attributes_3688637138912505694 (
                                                POSITION = 28,
                                                NORMAL = 29,
                                                TEXCOORD_0 = 30
                                            ),

                                        indices = 31,
                                        material = 5
                                    )

                            )

                    ),

            ele8 = Meshes_2239015062569869609 (
                        name = 4860899559522447666,
                        primitives = Array1Primitives_13498098561768200870 (
                            ele0 = Primitives_18432683395104474796 (
                                        attributes = Attributes_3688637138912505694 (
                                                POSITION = 32,
                                                NORMAL = 33,
                                                TEXCOORD_0 = 34
                                            ),

                                        indices = 23,
                                        material = 6
                                    )

                            )

                    ),

            ele9 = Meshes_2239015062569869609 (
                        name = 4860899559522447667,
                        primitives = Array1Primitives_13498098561768200870 (
                            ele0 = Primitives_18432683395104474796 (
                                        attributes = Attributes_3688637138912505694 (
                                                POSITION = 35,
                                                NORMAL = 36,
                                                TEXCOORD_0 = 37
                                            ),

                                        indices = 38,
                                        material = 7
                                    )

                            )

                    ),

            ele10 = Meshes_2239015062569869609 (
                        name = 4860899559522447668,
                        primitives = Array1Primitives_13498098561768200870 (
                            ele0 = Primitives_18432683395104474796 (
                                        attributes = Attributes_3688637138912505694 (
                                                POSITION = 39,
                                                NORMAL = 40,
                                                TEXCOORD_0 = 41
                                            ),

                                        indices = 42,
                                        material = 8
                                    )

                            )

                    ),

            ele11 = Meshes_2239015062569869609 (
                        name = 4860899559522447669,
                        primitives = Array1Primitives_13498098561768200870 (
                            ele0 = Primitives_18432683395104474796 (
                                        attributes = Attributes_3688637138912505694 (
                                                POSITION = 43,
                                                NORMAL = 44,
                                                TEXCOORD_0 = 45
                                            ),

                                        indices = 46,
                                        material = 9
                                    )

                            )

                    )

            ),

        accessors = Array47Accessors_15924034265267066853 (
            ele0 = Accessors_4059574448521175522 (
                        bufferView = 0,
                        componentType = 5126,
                        count = 780,
                        max = Array3Max_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 79123,
                                        d = 4096
                                    ),

                            ele1 = Ratio (
                                        n = 87361,
                                        d = 8192
                                    ),

                            ele2 = Ratio (
                                        n = 254108,
                                        d = 646689
                                    )

                            ),

                        min = Array3Min_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135863768742,
                                        d = 524288
                                    ),

                            ele1 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135869432818,
                                        d = 262144
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135858333778,
                                        d = 524288
                                    )

                            ),

                        type = 1447379763
                    ),

            ele1 = Accessors_10808715437781510715 (
                        bufferView = 1,
                        componentType = 5126,
                        count = 780,
                        type = 1447379763
                    ),

            ele2 = Accessors_10808715437781510715 (
                        bufferView = 2,
                        componentType = 5126,
                        count = 780,
                        type = 1447379762
                    ),

            ele3 = Accessors_10808715437781510715 (
                        bufferView = 3,
                        componentType = 5123,
                        count = 3942,
                        type = 91548323430738
                    ),

            ele4 = Accessors_4059574448521175522 (
                        bufferView = 4,
                        componentType = 5126,
                        count = 46,
                        max = Array3Max_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 1383026,
                                        d = 440167
                                    ),

                            ele1 = Ratio (
                                        n = 2073069,
                                        d = 131072
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135870449768,
                                        d = 131072
                                    )

                            ),

                        min = Array3Min_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 885407,
                                        d = 716396
                                    ),

                            ele1 = Ratio (
                                        n = 9009534,
                                        d = 988157
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135861613702,
                                        d = 524288
                                    )

                            ),

                        type = 1447379763
                    ),

            ele5 = Accessors_10808715437781510715 (
                        bufferView = 5,
                        componentType = 5126,
                        count = 46,
                        type = 1447379763
                    ),

            ele6 = Accessors_10808715437781510715 (
                        bufferView = 6,
                        componentType = 5126,
                        count = 46,
                        type = 1447379762
                    ),

            ele7 = Accessors_10808715437781510715 (
                        bufferView = 7,
                        componentType = 5123,
                        count = 108,
                        type = 91548323430738
                    ),

            ele8 = Accessors_4059574448521175522 (
                        bufferView = 8,
                        componentType = 5126,
                        count = 32,
                        max = Array3Max_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 3797422,
                                        d = 569067
                                    ),

                            ele1 = Ratio (
                                        n = 2898863,
                                        d = 675585
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871820386,
                                        d = 8192
                                    )

                            ),

                        min = Array3Min_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 155457,
                                        d = 973604
                                    ),

                            ele1 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135870652782,
                                        d = 761187
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135855293456,
                                        d = 524288
                                    )

                            ),

                        type = 1447379763
                    ),

            ele9 = Accessors_10808715437781510715 (
                        bufferView = 9,
                        componentType = 5126,
                        count = 32,
                        type = 1447379763
                    ),

            ele10 = Accessors_10808715437781510715 (
                        bufferView = 10,
                        componentType = 5126,
                        count = 32,
                        type = 1447379762
                    ),

            ele11 = Accessors_10808715437781510715 (
                        bufferView = 11,
                        componentType = 5123,
                        count = 150,
                        type = 91548323430738
                    ),

            ele12 = Accessors_4059574448521175522 (
                        bufferView = 12,
                        componentType = 5126,
                        count = 23,
                        max = Array3Max_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 5864973,
                                        d = 955690
                                    ),

                            ele1 = Ratio (
                                        n = 782071,
                                        d = 698275
                                    ),

                            ele2 = Ratio (
                                        n = 344243,
                                        d = 697209
                                    )

                            ),

                        min = Array3Min_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 436751,
                                        d = 131037
                                    ),

                            ele1 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871458538,
                                        d = 699635
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871301163,
                                        d = 537967
                                    )

                            ),

                        type = 1447379763
                    ),

            ele13 = Accessors_10808715437781510715 (
                        bufferView = 13,
                        componentType = 5126,
                        count = 23,
                        type = 1447379763
                    ),

            ele14 = Accessors_10808715437781510715 (
                        bufferView = 14,
                        componentType = 5126,
                        count = 23,
                        type = 1447379762
                    ),

            ele15 = Accessors_10808715437781510715 (
                        bufferView = 15,
                        componentType = 5123,
                        count = 72,
                        type = 91548323430738
                    ),

            ele16 = Accessors_4059574448521175522 (
                        bufferView = 16,
                        componentType = 5126,
                        count = 23,
                        max = Array3Max_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135869221337,
                                        d = 883793
                                    ),

                            ele1 = Ratio (
                                        n = 1000611,
                                        d = 990767
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135872007348,
                                        d = 52724
                                    )

                            ),

                        min = Array3Min_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135867466153,
                                        d = 797689
                                    ),

                            ele1 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871362506,
                                        d = 720466
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871074903,
                                        d = 497093
                                    )

                            ),

                        type = 1447379763
                    ),

            ele17 = Accessors_10808715437781510715 (
                        bufferView = 17,
                        componentType = 5126,
                        count = 23,
                        type = 1447379763
                    ),

            ele18 = Accessors_10808715437781510715 (
                        bufferView = 18,
                        componentType = 5126,
                        count = 23,
                        type = 1447379762
                    ),

            ele19 = Accessors_10808715437781510715 (
                        bufferView = 19,
                        componentType = 5123,
                        count = 72,
                        type = 91548323430738
                    ),

            ele20 = Accessors_4059574448521175522 (
                        bufferView = 20,
                        componentType = 5126,
                        count = 20,
                        max = Array3Max_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 3662506,
                                        d = 784797
                                    ),

                            ele1 = Ratio (
                                        n = 1242691,
                                        d = 131072
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871022142,
                                        d = 926605
                                    )

                            ),

                        min = Array3Min_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135869111713,
                                        d = 811261
                                    ),

                            ele1 = Ratio (
                                        n = 1103695,
                                        d = 262144
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135868581310,
                                        d = 524288
                                    )

                            ),

                        type = 1447379763
                    ),

            ele21 = Accessors_10808715437781510715 (
                        bufferView = 21,
                        componentType = 5126,
                        count = 20,
                        type = 1447379763
                    ),

            ele22 = Accessors_10808715437781510715 (
                        bufferView = 22,
                        componentType = 5126,
                        count = 20,
                        type = 1447379762
                    ),

            ele23 = Accessors_10808715437781510715 (
                        bufferView = 23,
                        componentType = 5123,
                        count = 54,
                        type = 91548323430738
                    ),

            ele24 = Accessors_4059574448521175522 (
                        bufferView = 24,
                        componentType = 5126,
                        count = 18,
                        max = Array3Max_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 4503190,
                                        d = 810951
                                    ),

                            ele1 = Ratio (
                                        n = 3148589,
                                        d = 976267
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135863709512,
                                        d = 262144
                                    )

                            ),

                        min = Array3Min_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 3576104,
                                        d = 937735
                                    ),

                            ele1 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135870955594,
                                        d = 524288
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135869672516,
                                        d = 65536
                                    )

                            ),

                        type = 1447379763
                    ),

            ele25 = Accessors_10808715437781510715 (
                        bufferView = 25,
                        componentType = 5126,
                        count = 18,
                        type = 1447379763
                    ),

            ele26 = Accessors_10808715437781510715 (
                        bufferView = 26,
                        componentType = 5126,
                        count = 18,
                        type = 1447379762
                    ),

            ele27 = Accessors_10808715437781510715 (
                        bufferView = 27,
                        componentType = 5123,
                        count = 84,
                        type = 91548323430738
                    ),

            ele28 = Accessors_4059574448521175522 (
                        bufferView = 28,
                        componentType = 5126,
                        count = 46,
                        max = Array3Max_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 5106667,
                                        d = 843971
                                    ),

                            ele1 = Ratio (
                                        n = 1086704,
                                        d = 947323
                                    ),

                            ele2 = Ratio (
                                        n = 228361,
                                        d = 824633
                                    )

                            ),

                        min = Array3Min_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135867697444,
                                        d = 745925
                                    ),

                            ele1 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871385530,
                                        d = 716539
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135870728499,
                                        d = 609703
                                    )

                            ),

                        type = 1447379763
                    ),

            ele29 = Accessors_10808715437781510715 (
                        bufferView = 29,
                        componentType = 5126,
                        count = 46,
                        type = 1447379763
                    ),

            ele30 = Accessors_10808715437781510715 (
                        bufferView = 30,
                        componentType = 5126,
                        count = 46,
                        type = 1447379762
                    ),

            ele31 = Accessors_10808715437781510715 (
                        bufferView = 31,
                        componentType = 5123,
                        count = 144,
                        type = 91548323430738
                    ),

            ele32 = Accessors_4059574448521175522 (
                        bufferView = 32,
                        componentType = 5126,
                        count = 20,
                        max = Array3Max_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 619661,
                                        d = 262144
                                    ),

                            ele1 = Ratio (
                                        n = 11972989,
                                        d = 997736
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871555911,
                                        d = 971743
                                    )

                            ),

                        min = Array3Min_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135870303303,
                                        d = 982271
                                    ),

                            ele1 = Ratio (
                                        n = 763265,
                                        d = 131072
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871364116,
                                        d = 131072
                                    )

                            ),

                        type = 1447379763
                    ),

            ele33 = Accessors_10808715437781510715 (
                        bufferView = 33,
                        componentType = 5126,
                        count = 20,
                        type = 1447379763
                    ),

            ele34 = Accessors_10808715437781510715 (
                        bufferView = 34,
                        componentType = 5126,
                        count = 20,
                        type = 1447379762
                    ),

            ele35 = Accessors_4059574448521175522 (
                        bufferView = 35,
                        componentType = 5126,
                        count = 1040,
                        max = Array3Max_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 10082941,
                                        d = 524288
                                    ),

                            ele1 = Ratio (
                                        n = 4450005,
                                        d = 262144
                                    ),

                            ele2 = Ratio (
                                        n = 3731,
                                        d = 21171
                                    )

                            ),

                        min = Array3Min_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135867872212,
                                        d = 262144
                                    ),

                            ele1 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135864729097,
                                        d = 740691
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135868570402,
                                        d = 131072
                                    )

                            ),

                        type = 1447379763
                    ),

            ele36 = Accessors_10808715437781510715 (
                        bufferView = 36,
                        componentType = 5126,
                        count = 1040,
                        type = 1447379763
                    ),

            ele37 = Accessors_10808715437781510715 (
                        bufferView = 37,
                        componentType = 5126,
                        count = 1040,
                        type = 1447379762
                    ),

            ele38 = Accessors_10808715437781510715 (
                        bufferView = 38,
                        componentType = 5123,
                        count = 4758,
                        type = 91548323430738
                    ),

            ele39 = Accessors_4059574448521175522 (
                        bufferView = 39,
                        componentType = 5126,
                        count = 42,
                        max = Array3Max_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 538637,
                                        d = 80717
                                    ),

                            ele1 = Ratio (
                                        n = 4276954,
                                        d = 996761
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135859214400,
                                        d = 524288
                                    )

                            ),

                        min = Array3Min_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 146781,
                                        d = 918754
                                    ),

                            ele1 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871880868,
                                        d = 65536
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135864016812,
                                        d = 262144
                                    )

                            ),

                        type = 1447379763
                    ),

            ele40 = Accessors_10808715437781510715 (
                        bufferView = 40,
                        componentType = 5126,
                        count = 42,
                        type = 1447379763
                    ),

            ele41 = Accessors_10808715437781510715 (
                        bufferView = 41,
                        componentType = 5126,
                        count = 42,
                        type = 1447379762
                    ),

            ele42 = Accessors_10808715437781510715 (
                        bufferView = 42,
                        componentType = 5123,
                        count = 198,
                        type = 91548323430738
                    ),

            ele43 = Accessors_4059574448521175522 (
                        bufferView = 43,
                        componentType = 5126,
                        count = 24,
                        max = Array3Max_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 5070412,
                                        d = 965175
                                    ),

                            ele1 = Ratio (
                                        n = 736813,
                                        d = 400773
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135864104408,
                                        d = 262144
                                    )

                            ),

                        min = Array3Min_17485459530686172143 (
                            ele0 = Ratio (
                                        n = 29263,
                                        d = 8192
                                    ),

                            ele1 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135871890435,
                                        d = 59177
                                    ),

                            ele2 = Ratio (
                                        n = 3618502788666131213697322783095070105623107215331596699973092056135869786740,
                                        d = 65536
                                    )

                            ),

                        type = 1447379763
                    ),

            ele44 = Accessors_10808715437781510715 (
                        bufferView = 44,
                        componentType = 5126,
                        count = 24,
                        type = 1447379763
                    ),

            ele45 = Accessors_10808715437781510715 (
                        bufferView = 45,
                        componentType = 5126,
                        count = 24,
                        type = 1447379762
                    ),

            ele46 = Accessors_10808715437781510715 (
                        bufferView = 46,
                        componentType = 5123,
                        count = 114,
                        type = 91548323430738
                    )

            ),

        bufferViews = Array47BufferViews_6918872184190647278 (
            ele0 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 9360,
                        byteOffset = 0
                    ),

            ele1 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 9360,
                        byteOffset = 9360
                    ),

            ele2 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 6240,
                        byteOffset = 18720
                    ),

            ele3 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 7884,
                        byteOffset = 24960
                    ),

            ele4 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 552,
                        byteOffset = 32844
                    ),

            ele5 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 552,
                        byteOffset = 33396
                    ),

            ele6 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 368,
                        byteOffset = 33948
                    ),

            ele7 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 216,
                        byteOffset = 34316
                    ),

            ele8 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 384,
                        byteOffset = 34532
                    ),

            ele9 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 384,
                        byteOffset = 34916
                    ),

            ele10 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 256,
                        byteOffset = 35300
                    ),

            ele11 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 300,
                        byteOffset = 35556
                    ),

            ele12 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 276,
                        byteOffset = 35856
                    ),

            ele13 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 276,
                        byteOffset = 36132
                    ),

            ele14 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 184,
                        byteOffset = 36408
                    ),

            ele15 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 144,
                        byteOffset = 36592
                    ),

            ele16 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 276,
                        byteOffset = 36736
                    ),

            ele17 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 276,
                        byteOffset = 37012
                    ),

            ele18 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 184,
                        byteOffset = 37288
                    ),

            ele19 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 144,
                        byteOffset = 37472
                    ),

            ele20 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 240,
                        byteOffset = 37616
                    ),

            ele21 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 240,
                        byteOffset = 37856
                    ),

            ele22 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 160,
                        byteOffset = 38096
                    ),

            ele23 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 108,
                        byteOffset = 38256
                    ),

            ele24 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 216,
                        byteOffset = 38364
                    ),

            ele25 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 216,
                        byteOffset = 38580
                    ),

            ele26 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 144,
                        byteOffset = 38796
                    ),

            ele27 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 168,
                        byteOffset = 38940
                    ),

            ele28 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 552,
                        byteOffset = 39108
                    ),

            ele29 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 552,
                        byteOffset = 39660
                    ),

            ele30 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 368,
                        byteOffset = 40212
                    ),

            ele31 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 288,
                        byteOffset = 40580
                    ),

            ele32 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 240,
                        byteOffset = 40868
                    ),

            ele33 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 240,
                        byteOffset = 41108
                    ),

            ele34 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 160,
                        byteOffset = 41348
                    ),

            ele35 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 12480,
                        byteOffset = 41508
                    ),

            ele36 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 12480,
                        byteOffset = 53988
                    ),

            ele37 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 8320,
                        byteOffset = 66468
                    ),

            ele38 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 9516,
                        byteOffset = 74788
                    ),

            ele39 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 504,
                        byteOffset = 84304
                    ),

            ele40 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 504,
                        byteOffset = 84808
                    ),

            ele41 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 336,
                        byteOffset = 85312
                    ),

            ele42 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 396,
                        byteOffset = 85648
                    ),

            ele43 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 288,
                        byteOffset = 86044
                    ),

            ele44 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 288,
                        byteOffset = 86332
                    ),

            ele45 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 192,
                        byteOffset = 86620
                    ),

            ele46 = BufferViews_3688637138912505694 (
                        buffer = 0,
                        byteLength = 228,
                        byteOffset = 86812
                    )

            ),

        buffers = Array1Buffers_5008989350677271555 (
            ele0 = Buffers_15516991204430101057 (
                        byteLength = 87040,
                        uri = 1798010752852306323822
                    )

            )

    )

    return (gltf)
end

# @view
# func retrieve_bin {
#         range_check_ptr
#     } () -> (
#         z_len : felt,
#         z : felt*
#     ):
#     alloc_locals

#     let (local z) = alloc()

#     assert [z+0] = 869563592509762261593224340332970796148764582762318872543463693353032
#     assert [z+1] = 283467880002
#     assert [z+2] = 10
#     let z_len = 3

#     return (z_len, z)
# end
