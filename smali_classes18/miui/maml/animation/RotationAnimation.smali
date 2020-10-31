.class public Lmiui/maml/animation/RotationAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "RotationAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Rotation"

.field public static final TAG_NAME:Ljava/lang/String; = "RotationAnimation"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 5

    const-string v0, "Rotation"

    const-string v1, "angle"

    invoke-direct {p0, p1, v0, v1, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method


# virtual methods
.method public final getAngle()F
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/animation/RotationAnimation;->getCurValue(I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
