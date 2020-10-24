.class public Lcom/android/camera/aiwatermark/algo/ASDEngine;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final spots2ASDKey(I)Ljava/lang/String;
    .locals 2

    const-string v0, "negative"

    if-eqz p0, :cond_8

    const/16 v1, 0x1e

    if-eq p0, v1, :cond_7

    const/16 v1, 0x21

    if-eq p0, v1, :cond_6

    const/4 v1, 0x2

    if-eq p0, v1, :cond_5

    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    const/16 v1, 0x15

    if-eq p0, v1, :cond_3

    const/16 v1, 0x16

    if-eq p0, v1, :cond_2

    const/16 v1, 0x1b

    if-eq p0, v1, :cond_1

    const/16 v1, 0x1c

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    goto :goto_0

    :pswitch_0
    const-string v0, "tutuk"

    goto :goto_0

    :pswitch_1
    const-string v0, "coconut_tree"

    goto :goto_0

    :pswitch_2
    const-string v0, "monkey"

    goto :goto_0

    :pswitch_3
    const-string v0, "fleshiness"

    goto :goto_0

    :pswitch_4
    const-string v0, "leafs"

    goto :goto_0

    :pswitch_5
    const-string v0, "grassplot"

    goto :goto_0

    :pswitch_6
    const-string v0, "nightscape"

    goto :goto_0

    :pswitch_7
    const-string v0, "plants"

    goto :goto_0

    :pswitch_8
    const-string v0, "dog"

    goto :goto_0

    :pswitch_9
    const-string v0, "cat"

    goto :goto_0

    :pswitch_a
    const-string v0, "sunrise_sunset"

    goto :goto_0

    :pswitch_b
    const-string v0, "bluesky"

    goto :goto_0

    :cond_0
    const-string v0, "cow"

    goto :goto_0

    :cond_1
    const-string v0, "buddha"

    goto :goto_0

    :cond_2
    const-string v0, "overcast"

    goto :goto_0

    :cond_3
    const-string v0, "cloudy"

    goto :goto_0

    :cond_4
    const-string v0, "delicacy"

    goto :goto_0

    :cond_5
    const-string v0, "flower"

    goto :goto_0

    :cond_6
    const-string v0, "underwater"

    goto :goto_0

    :cond_7
    const-string v0, "motorcycle"

    :cond_8
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
