.class Lmiui/animation/base/AnimConfigLink$3;
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
.method public process(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iget-wide p0, p1, Lmiui/animation/base/AnimConfig;->flags:J

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic process(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/animation/base/AnimConfigLink$3;->process(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
