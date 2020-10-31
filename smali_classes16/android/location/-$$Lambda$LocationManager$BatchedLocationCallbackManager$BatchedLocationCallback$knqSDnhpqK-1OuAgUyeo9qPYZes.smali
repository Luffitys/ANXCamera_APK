.class public final synthetic Landroid/location/-$$Lambda$LocationManager$BatchedLocationCallbackManager$BatchedLocationCallback$knqSDnhpqK-1OuAgUyeo9qPYZes;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/-$$Lambda$LocationManager$BatchedLocationCallbackManager$BatchedLocationCallback$knqSDnhpqK-1OuAgUyeo9qPYZes;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/location/-$$Lambda$LocationManager$BatchedLocationCallbackManager$BatchedLocationCallback$knqSDnhpqK-1OuAgUyeo9qPYZes;->f$0:Ljava/util/List;

    check-cast p1, Landroid/location/BatchedLocationCallback;

    invoke-static {v0, p1}, Landroid/location/LocationManager$BatchedLocationCallbackManager$BatchedLocationCallback;->lambda$onLocationBatch$0(Ljava/util/List;Landroid/location/BatchedLocationCallback;)V

    return-void
.end method
