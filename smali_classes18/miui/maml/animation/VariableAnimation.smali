.class public Lmiui/maml/animation/VariableAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "VariableAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "AniFrame"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableAnimation"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 4

    const-string v0, "AniFrame"

    invoke-direct {p0, p1, v0, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method


# virtual methods
.method public final getValue()D
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/animation/VariableAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method
