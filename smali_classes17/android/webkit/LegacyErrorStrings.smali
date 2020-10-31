.class Landroid/webkit/LegacyErrorStrings;
.super Ljava/lang/Object;
.source "LegacyErrorStrings.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResource(I)I
    .registers 4

    const v0, 0x10403d6

    packed-switch p0, :pswitch_data_5a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using generic message for unknown error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Http"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_1d
    const v0, 0x10403de

    return v0

    :pswitch_21
    return v0

    :pswitch_22
    const v0, 0x10403dd

    return v0

    :pswitch_26
    const v0, 0x10403e3

    return v0

    :pswitch_2a
    const v0, 0x10403d7

    return v0

    :pswitch_2e
    const v0, 0x10403df

    return v0

    :pswitch_32
    const v0, 0x10403d8

    return v0

    :pswitch_36
    const v0, 0x10403dc

    return v0

    :pswitch_3a
    const v0, 0x10403e1

    return v0

    :pswitch_3e
    const v0, 0x10403e0

    return v0

    :pswitch_42
    const v0, 0x1040008

    return v0

    :pswitch_46
    const v0, 0x10403d9

    return v0

    :pswitch_4a
    const v0, 0x1040007

    return v0

    :pswitch_4e
    const v0, 0x10403da

    return v0

    :pswitch_52
    const v0, 0x10403db

    return v0

    :pswitch_56
    const v0, 0x10403e2

    return v0

    :pswitch_data_5a
    .packed-switch -0xf
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_21
        :pswitch_1d
    .end packed-switch
.end method

.method static getString(ILandroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/webkit/LegacyErrorStrings;->getResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
