.class public final synthetic Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

.field public final synthetic f$1:Landroid/telephony/PhoneStateListener;

.field public final synthetic f$2:Landroid/telephony/CellIdentity;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;->f$0:Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;->f$1:Landroid/telephony/PhoneStateListener;

    iput-object p3, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;->f$2:Landroid/telephony/CellIdentity;

    iput-object p4, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;->f$3:Ljava/lang/String;

    iput p5, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;->f$4:I

    iput p6, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;->f$5:I

    iput p7, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;->f$6:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 8

    iget-object v0, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;->f$0:Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;->f$1:Landroid/telephony/PhoneStateListener;

    iget-object v2, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;->f$2:Landroid/telephony/CellIdentity;

    iget-object v3, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;->f$3:Ljava/lang/String;

    iget v4, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;->f$4:I

    iget v5, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;->f$5:I

    iget v6, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;->f$6:I

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onRegistrationFailed$61$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method
