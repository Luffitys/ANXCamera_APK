.class public Lcom/android/camera/data/data/runing/TypeElementsBeauty;
.super Lcom/android/camera/data/data/TypeElements;
.source "TypeElementsBeauty.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/TypeElements;-><init>(Lcom/android/camera/data/data/ComponentData;)V

    return-void
.end method

.method private createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-direct {p0, p2, p4}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->supportType(Ljava/lang/String;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p3, "pref_beauty_head_slim_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x11

    goto/16 :goto_0

    :sswitch_1
    const-string p3, "key_live_enlarge_eye_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x18

    goto/16 :goto_0

    :sswitch_2
    const-string p3, "pref_beauty_shoulder_slim_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x13

    goto/16 :goto_0

    :sswitch_3
    const-string p3, "pref_beautify_hairline_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x6

    goto/16 :goto_0

    :sswitch_4
    const-string p3, "pref_beautify_pupil_line_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string p3, "pref_beautify_blusher_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0xf

    goto/16 :goto_0

    :sswitch_6
    const-string p3, "pref_beautify_skin_color_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x0

    goto/16 :goto_0

    :sswitch_7
    const-string p3, "pref_beautify_enlarge_eye_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x2

    goto/16 :goto_0

    :sswitch_8
    const-string p3, "pref_beautify_nose_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x4

    goto/16 :goto_0

    :sswitch_9
    const-string p3, "pref_eye_light_type_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x10

    goto/16 :goto_0

    :sswitch_a
    const-string p3, "pref_beautify_skin_smooth_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x3

    goto/16 :goto_0

    :sswitch_b
    const-string p3, "pref_beautify_slim_face_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x1

    goto/16 :goto_0

    :sswitch_c
    const-string p3, "key_live_shrink_face_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x17

    goto/16 :goto_0

    :sswitch_d
    const-string p3, "pref_beautify_risorius_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x5

    goto/16 :goto_0

    :sswitch_e
    const-string p3, "key_beauty_leg_slim_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x14

    goto/16 :goto_0

    :sswitch_f
    const-string p3, "pref_beautify_chin_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x8

    goto/16 :goto_0

    :sswitch_10
    const-string p3, "pref_beautify_lips_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x7

    goto :goto_0

    :sswitch_11
    const-string p3, "pref_beautify_neck_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x9

    goto :goto_0

    :sswitch_12
    const-string p3, "pref_beautify_slim_nose_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0xb

    goto :goto_0

    :sswitch_13
    const-string p3, "pref_beautify_eyebrow_dye_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0xc

    goto :goto_0

    :sswitch_14
    const-string p3, "pref_beautify_smile_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0xa

    goto :goto_0

    :sswitch_15
    const-string p3, "pref_beauty_whole_body_slim_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x15

    goto :goto_0

    :sswitch_16
    const-string p3, "pref_beauty_butt_slim_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x16

    goto :goto_0

    :sswitch_17
    const-string p3, "pref_beautify_jelly_lips_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0xe

    goto :goto_0

    :sswitch_18
    const-string p3, "pref_beauty_body_slim_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x12

    goto :goto_0

    :sswitch_19
    const-string p3, "key_live_smooth_strength"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x19

    :cond_1
    :goto_0
    const p3, 0x7f0f00d5

    const p4, 0x7f08019b

    const v1, 0x7f0f00ca

    const v2, 0x7f080188

    const v3, 0x7f0f00cd

    const v4, 0x7f08018b

    const v5, 0x7f080199

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "to be continued"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p0, p4, p3, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p0, v4, v3, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_3
    return-object v0

    :pswitch_4
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0801a2

    const p4, 0x7f0f0060

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f08018f

    const p4, 0x7f0f005c

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080198

    const p4, 0x7f0f005e

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080184

    const p4, 0x7f0f005a

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f08018d

    const p4, 0x7f0f005b

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080189

    const p4, 0x7f0f00db

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080183

    const p4, 0x7f0f00c8

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f08018e

    const p4, 0x7f0f00cf

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080196

    const p4, 0x7f0f00d3

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_d
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f08018a

    const p4, 0x7f0f00cb

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_e
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f08019a

    const p4, 0x7f0f00d7

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_f
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0f00d8

    invoke-direct {p0, v5, p3, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_10
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080194

    const p4, 0x7f0f00d1

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080185

    const p4, 0x7f0f00c9

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080190

    const p4, 0x7f0f00d0

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_13
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f08018c

    const p4, 0x7f0f00ce

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_14
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080197

    const p4, 0x7f0f00d4

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080195

    const p4, 0x7f0f00d2

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_16
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p0, p4, p3, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_17
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_18
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p0, v4, v3, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_19
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0f00d6

    invoke-direct {p0, v5, p3, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7dcb43c1 -> :sswitch_19
        -0x676e6ee1 -> :sswitch_18
        -0x5e6b0daf -> :sswitch_17
        -0x5a8387f2 -> :sswitch_16
        -0x4b3d8c29 -> :sswitch_15
        -0x423823b0 -> :sswitch_14
        -0x3926c11e -> :sswitch_13
        -0x3579d363 -> :sswitch_12
        -0x1403c3d1 -> :sswitch_11
        -0x12884130 -> :sswitch_10
        -0x102a61a6 -> :sswitch_f
        -0x8bc7263 -> :sswitch_e
        -0x25d6108 -> :sswitch_d
        0xa78ecec -> :sswitch_c
        0x35532ea7 -> :sswitch_b
        0x36aaa8f8 -> :sswitch_a
        0x3832544d -> :sswitch_9
        0x3ad8a2a3 -> :sswitch_8
        0x3e8271ec -> :sswitch_7
        0x3f0b1471 -> :sswitch_6
        0x5514d1b5 -> :sswitch_5
        0x6202ad75 -> :sswitch_4
        0x62f067e6 -> :sswitch_3
        0x65e369e1 -> :sswitch_2
        0x699265fd -> :sswitch_1
        0x73f08a21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initAdvanceItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_FRONT_ADVANCE:[Ljava/lang/String;

    const-string v1, "3"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method private initFigureItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_BACK_FIGURE:[Ljava/lang/String;

    const-string v1, "6"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    const-string p4, "4"

    const-string v0, "pref_beautify_skin_smooth_ratio_key"

    invoke-direct {p0, p4, v0, p2, p3}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;Z",
            "Lcom/android/camera2/CameraCapabilities;",
            ")V"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2, p4, p5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initLiveBeautyItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_LIVE:[Ljava/lang/String;

    const-string v1, "11"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method private initMakeUpItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    sget-object p4, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_FRONT_MAKEUP:[Ljava/lang/String;

    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p4, v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x3832544d

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "pref_eye_light_type_key"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v1

    :cond_1
    :goto_1
    const-string v6, "5"

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    invoke-direct {p0, v6, v3, v7, p3}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object v4

    goto :goto_2

    :cond_2
    if-ne p2, v7, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/config/a;->Mc()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v6, v3, v1, p3}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object v4

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private initReModelingItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_FRONT_REMODELING:[Ljava/lang/String;

    const-string v1, "4"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p4, 0x0

    const/4 v0, -0x1

    move v1, p4

    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v1, p2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/data/TypeItem;

    iget-object v5, v5, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x25d6108

    if-eq v6, v7, :cond_1

    const v7, 0x62f067e6

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "pref_beautify_hairline_ratio_key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_1
    const-string v6, "pref_beautify_risorius_ratio_key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, p4

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v0

    :goto_2
    if-eqz v5, :cond_4

    if-eq v5, v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eq v2, v0, :cond_6

    if-eq v3, v0, :cond_6

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    const-string p2, "4"

    const-string v0, "pref_beautify_skin_smooth_ratio_key"

    invoke-direct {p0, p2, v0, v4, p3}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {p1, p4, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method private supportType(Ljava/lang/String;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/camera2/CameraCapabilities;->isSupportBeautyType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public initAndGetSupportItems(ILcom/android/camera2/CameraCapabilities;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/TypeElements;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    check-cast v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x620

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v3, "6"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move v2, v6

    goto :goto_0

    :pswitch_1
    const-string v3, "5"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move v2, v7

    goto :goto_0

    :pswitch_2
    const-string v3, "4"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move v2, v8

    goto :goto_0

    :pswitch_3
    const-string v3, "3"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v3, "11"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move v2, v5

    :cond_1
    :goto_0
    if-eqz v2, :cond_6

    if-eq v2, v8, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-ne v2, v5, :cond_2

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initLiveBeautyItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "to be continued"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initFigureItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initMakeUpItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initReModelingItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initAdvanceItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
