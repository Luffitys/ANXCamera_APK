.class public final synthetic Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$pLr-IfJJu1u_YG6I5LI0iHTuBi0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

.field public final synthetic f$1:Landroid/telephony/PhoneStateListener;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$pLr-IfJJu1u_YG6I5LI0iHTuBi0;->f$0:Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$pLr-IfJJu1u_YG6I5LI0iHTuBi0;->f$1:Landroid/telephony/PhoneStateListener;

    iput p3, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$pLr-IfJJu1u_YG6I5LI0iHTuBi0;->f$2:I

    iput p4, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$pLr-IfJJu1u_YG6I5LI0iHTuBi0;->f$3:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$pLr-IfJJu1u_YG6I5LI0iHTuBi0;->f$0:Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$pLr-IfJJu1u_YG6I5LI0iHTuBi0;->f$1:Landroid/telephony/PhoneStateListener;

    iget v2, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$pLr-IfJJu1u_YG6I5LI0iHTuBi0;->f$2:I

    iget v3, p0, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$pLr-IfJJu1u_YG6I5LI0iHTuBi0;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDataConnectionStateChanged$15$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;II)V

    return-void
.end method
