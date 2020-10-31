.class Lmiui/animation/base/AnimConfigLink$2;
.super Ljava/lang/Object;
.source "AnimConfigLink.java"

# interfaces
.implements Lmiui/animation/base/AnimConfigLink$IMapOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/base/AnimConfigLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/animation/base/AnimConfigLink$IMapOperation<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 6

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lmiui/animation/base/AnimConfig;->tintMode:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic process(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/animation/base/AnimConfigLink$2;->process(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
