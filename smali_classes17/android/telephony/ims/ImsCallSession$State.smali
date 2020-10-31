.class public Landroid/telephony/ims/ImsCallSession$State;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ESTABLISHED:I = 0x4

.field public static final ESTABLISHING:I = 0x3

.field public static final IDLE:I = 0x0

.field public static final INITIATED:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final NEGOTIATING:I = 0x2

.field public static final REESTABLISHING:I = 0x6

.field public static final RENEGOTIATING:I = 0x5

.field public static final TERMINATED:I = 0x8

.field public static final TERMINATING:I = 0x7


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_22

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_6
    const-string v0, "TERMINATED"

    return-object v0

    :pswitch_9
    const-string v0, "TERMINATING"

    return-object v0

    :pswitch_c
    const-string v0, "REESTABLISHING"

    return-object v0

    :pswitch_f
    const-string v0, "RENEGOTIATING"

    return-object v0

    :pswitch_12
    const-string v0, "ESTABLISHED"

    return-object v0

    :pswitch_15
    const-string v0, "ESTABLISHING"

    return-object v0

    :pswitch_18
    const-string v0, "NEGOTIATING"

    return-object v0

    :pswitch_1b
    const-string v0, "INITIATED"

    return-object v0

    :pswitch_1e
    const-string v0, "IDLE"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
