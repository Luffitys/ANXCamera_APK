.class Lmiui/maml/data/LocationBinder$1;
.super Ljava/lang/Object;
.source "LocationBinder.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/data/LocationBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/LocationBinder;


# direct methods
.method constructor <init>(Lmiui/maml/data/LocationBinder;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/data/LocationBinder$1;->this$0:Lmiui/maml/data/LocationBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/LocationBinder$1;->this$0:Lmiui/maml/data/LocationBinder;

    # invokes: Lmiui/maml/data/LocationBinder;->updateLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lmiui/maml/data/LocationBinder;->access$000(Lmiui/maml/data/LocationBinder;Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
