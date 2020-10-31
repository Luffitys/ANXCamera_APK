.class public final synthetic Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$W65ui1dCCc-JnQa7gon1I7Bz7Sk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/PhoneStateListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/PhoneStateListener;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$W65ui1dCCc-JnQa7gon1I7Bz7Sk;->f$0:Landroid/telephony/PhoneStateListener;

    iput p2, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$W65ui1dCCc-JnQa7gon1I7Bz7Sk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$W65ui1dCCc-JnQa7gon1I7Bz7Sk;->f$0:Landroid/telephony/PhoneStateListener;

    iget v1, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$W65ui1dCCc-JnQa7gon1I7Bz7Sk;->f$1:I

    invoke-static {v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDataActivationStateChanged$34(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
