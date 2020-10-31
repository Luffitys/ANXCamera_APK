.class public final Landroid/app/prediction/AppTargetEvent$Builder;
.super Ljava/lang/Object;
.source "AppTargetEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/prediction/AppTargetEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAction:I

.field private mLocation:Ljava/lang/String;

.field private mTarget:Landroid/app/prediction/AppTarget;


# direct methods
.method public constructor <init>(Landroid/app/prediction/AppTarget;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/prediction/AppTargetEvent$Builder;->mTarget:Landroid/app/prediction/AppTarget;

    iput p2, p0, Landroid/app/prediction/AppTargetEvent$Builder;->mAction:I

    return-void
.end method


# virtual methods
.method public build()Landroid/app/prediction/AppTargetEvent;
    .registers 6

    new-instance v0, Landroid/app/prediction/AppTargetEvent;

    iget-object v1, p0, Landroid/app/prediction/AppTargetEvent$Builder;->mTarget:Landroid/app/prediction/AppTarget;

    iget-object v2, p0, Landroid/app/prediction/AppTargetEvent$Builder;->mLocation:Ljava/lang/String;

    iget v3, p0, Landroid/app/prediction/AppTargetEvent$Builder;->mAction:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/prediction/AppTargetEvent;-><init>(Landroid/app/prediction/AppTarget;Ljava/lang/String;ILandroid/app/prediction/AppTargetEvent$1;)V

    return-object v0
.end method

.method public setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/prediction/AppTargetEvent$Builder;->mLocation:Ljava/lang/String;

    return-object p0
.end method
