.class Lmiui/animation/base/AnimConfigLink$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/animation/base/AnimConfigLink$IMapOperation;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget p1, p1, Lmiui/animation/base/AnimConfig;->tintMode:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic process(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/animation/base/AnimConfigLink$2;->process(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
