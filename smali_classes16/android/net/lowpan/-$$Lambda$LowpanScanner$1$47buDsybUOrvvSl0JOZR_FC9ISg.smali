.class public final synthetic Landroid/net/lowpan/-$$Lambda$LowpanScanner$1$47buDsybUOrvvSl0JOZR_FC9ISg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/lowpan/LowpanScanner$Callback;

.field public final synthetic f$1:Landroid/net/lowpan/LowpanBeaconInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/-$$Lambda$LowpanScanner$1$47buDsybUOrvvSl0JOZR_FC9ISg;->f$0:Landroid/net/lowpan/LowpanScanner$Callback;

    iput-object p2, p0, Landroid/net/lowpan/-$$Lambda$LowpanScanner$1$47buDsybUOrvvSl0JOZR_FC9ISg;->f$1:Landroid/net/lowpan/LowpanBeaconInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/-$$Lambda$LowpanScanner$1$47buDsybUOrvvSl0JOZR_FC9ISg;->f$0:Landroid/net/lowpan/LowpanScanner$Callback;

    iget-object v1, p0, Landroid/net/lowpan/-$$Lambda$LowpanScanner$1$47buDsybUOrvvSl0JOZR_FC9ISg;->f$1:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanScanner$1;->lambda$onNetScanBeacon$0(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V

    return-void
.end method
