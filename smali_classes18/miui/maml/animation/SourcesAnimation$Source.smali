.class public Lmiui/maml/animation/SourcesAnimation$Source;
.super Lmiui/maml/animation/BaseAnimation$AnimationItem;
.source "SourcesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/animation/SourcesAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Source"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Source"


# instance fields
.field public mSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;-><init>(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    const-string v0, "src"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    return-void
.end method
