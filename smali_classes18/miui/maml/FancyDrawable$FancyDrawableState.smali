.class final Lmiui/maml/FancyDrawable$FancyDrawableState;
.super Lmiui/maml/MamlDrawable$MamlDrawableState;
.source "FancyDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/FancyDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FancyDrawableState"
.end annotation


# instance fields
.field mRendererCore:Lmiui/maml/RendererCore;


# direct methods
.method public constructor <init>(Lmiui/maml/RendererCore;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/MamlDrawable$MamlDrawableState;-><init>()V

    iput-object p1, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mRendererCore:Lmiui/maml/RendererCore;

    return-void
.end method


# virtual methods
.method protected createDrawable()Lmiui/maml/MamlDrawable;
    .registers 3

    new-instance v0, Lmiui/maml/FancyDrawable;

    iget-object v1, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-direct {v0, v1}, Lmiui/maml/FancyDrawable;-><init>(Lmiui/maml/RendererCore;)V

    return-object v0
.end method
