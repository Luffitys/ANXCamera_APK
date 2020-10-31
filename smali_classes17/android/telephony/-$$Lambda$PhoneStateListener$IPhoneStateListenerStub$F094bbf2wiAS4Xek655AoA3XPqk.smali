.class public final synthetic Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/PhoneStateListener;

.field public final synthetic f$1:Landroid/telephony/CellIdentity;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;->f$0:Landroid/telephony/PhoneStateListener;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;->f$1:Landroid/telephony/CellIdentity;

    iput-object p3, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;->f$2:Ljava/lang/String;

    iput p4, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;->f$3:I

    iput p5, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;->f$4:I

    iput p6, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;->f$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;->f$1:Landroid/telephony/CellIdentity;

    iget-object v2, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;->f$2:Ljava/lang/String;

    iget v3, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;->f$3:I

    iget v4, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;->f$4:I

    iget v5, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;->f$5:I

    invoke-static/range {v0 .. v5}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onRegistrationFailed$60(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method
