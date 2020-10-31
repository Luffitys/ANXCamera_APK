.class public final Landroid/app/contentsuggestions/SelectionsRequest$Builder;
.super Ljava/lang/Object;
.source "SelectionsRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/SelectionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private mInterestPoint:Landroid/graphics/Point;

.field private final mTaskId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/contentsuggestions/SelectionsRequest$Builder;->mTaskId:I

    return-void
.end method


# virtual methods
.method public build()Landroid/app/contentsuggestions/SelectionsRequest;
    .registers 6

    new-instance v0, Landroid/app/contentsuggestions/SelectionsRequest;

    iget v1, p0, Landroid/app/contentsuggestions/SelectionsRequest$Builder;->mTaskId:I

    iget-object v2, p0, Landroid/app/contentsuggestions/SelectionsRequest$Builder;->mInterestPoint:Landroid/graphics/Point;

    iget-object v3, p0, Landroid/app/contentsuggestions/SelectionsRequest$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/contentsuggestions/SelectionsRequest;-><init>(ILandroid/graphics/Point;Landroid/os/Bundle;Landroid/app/contentsuggestions/SelectionsRequest$1;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/contentsuggestions/SelectionsRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/contentsuggestions/SelectionsRequest$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setInterestPoint(Landroid/graphics/Point;)Landroid/app/contentsuggestions/SelectionsRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/contentsuggestions/SelectionsRequest$Builder;->mInterestPoint:Landroid/graphics/Point;

    return-object p0
.end method
