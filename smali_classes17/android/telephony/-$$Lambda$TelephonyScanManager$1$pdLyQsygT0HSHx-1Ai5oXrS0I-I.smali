.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyScanManager$1$pdLyQsygT0HSHx-1Ai5oXrS0I-I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$pdLyQsygT0HSHx-1Ai5oXrS0I-I;->f$0:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$pdLyQsygT0HSHx-1Ai5oXrS0I-I;->f$0:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    invoke-static {v0}, Landroid/telephony/TelephonyScanManager$1;->lambda$handleMessage$3(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    return-void
.end method
