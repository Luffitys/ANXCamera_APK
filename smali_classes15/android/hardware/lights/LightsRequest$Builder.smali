.class public final Landroid/hardware/lights/LightsRequest$Builder;
.super Ljava/lang/Object;
.source "LightsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/lights/LightsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mChanges:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/lights/LightState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/lights/LightsRequest$Builder;->mChanges:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/lights/LightsRequest;
    .registers 4

    new-instance v0, Landroid/hardware/lights/LightsRequest;

    iget-object v1, p0, Landroid/hardware/lights/LightsRequest$Builder;->mChanges:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/lights/LightsRequest;-><init>(Landroid/util/SparseArray;Landroid/hardware/lights/LightsRequest$1;)V

    return-object v0
.end method

.method public clearLight(Landroid/hardware/lights/Light;)Landroid/hardware/lights/LightsRequest$Builder;
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/lights/LightsRequest$Builder;->mChanges:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/lights/Light;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setLight(Landroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)Landroid/hardware/lights/LightsRequest$Builder;
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/lights/LightsRequest$Builder;->mChanges:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/lights/Light;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method
