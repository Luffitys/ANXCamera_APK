.class public final synthetic Landroid/hardware/location/-$$Lambda$ContextHubManager$3$kLhhBRChCeue1LKohd5lK_lfKTU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/location/ContextHubClientCallback;

.field public final synthetic f$1:Landroid/hardware/location/ContextHubClient;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$kLhhBRChCeue1LKohd5lK_lfKTU;->f$0:Landroid/hardware/location/ContextHubClientCallback;

    iput-object p2, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$kLhhBRChCeue1LKohd5lK_lfKTU;->f$1:Landroid/hardware/location/ContextHubClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$kLhhBRChCeue1LKohd5lK_lfKTU;->f$0:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v1, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$3$kLhhBRChCeue1LKohd5lK_lfKTU;->f$1:Landroid/hardware/location/ContextHubClient;

    invoke-static {v0, v1}, Landroid/hardware/location/ContextHubManager$3;->lambda$onHubReset$1(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V

    return-void
.end method
