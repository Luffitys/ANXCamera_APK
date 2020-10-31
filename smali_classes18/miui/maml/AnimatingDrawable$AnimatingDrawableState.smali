.class final Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;
.super Lmiui/maml/MamlDrawable$MamlDrawableState;
.source "AnimatingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/AnimatingDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnimatingDrawableState"
.end annotation


# instance fields
.field private mAnimIndex:I

.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLayerIndex:I

.field private mPackageName:Ljava/lang/String;

.field private mResourceManager:Lmiui/maml/ResourceManager;

.field private mUseFancyWhenStatic:Z

.field private mUseQuietWhenAnim:Z

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V
    .registers 10

    invoke-direct {p0}, Lmiui/maml/MamlDrawable$MamlDrawableState;-><init>()V

    iput-object p1, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mResourceManager:Lmiui/maml/ResourceManager;

    iput-object p2, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mClassName:Ljava/lang/String;

    iput-object p5, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mUser:Landroid/os/UserHandle;

    iput p6, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mLayerIndex:I

    iput p7, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mAnimIndex:I

    iput-boolean p8, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseQuietWhenAnim:Z

    iput-boolean p9, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseFancyWhenStatic:Z

    return-void
.end method


# virtual methods
.method protected createDrawable()Lmiui/maml/MamlDrawable;
    .registers 12

    new-instance v10, Lmiui/maml/AnimatingDrawable;

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mClassName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v5, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mUser:Landroid/os/UserHandle;

    iget v6, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mLayerIndex:I

    iget v7, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mAnimIndex:I

    iget-boolean v8, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseQuietWhenAnim:Z

    iget-boolean v9, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseFancyWhenStatic:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lmiui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-object v10
.end method
