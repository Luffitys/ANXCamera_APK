.class final Lmiuix/springback/trigger/DefaultTrigger$Action$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmiuix/springback/trigger/DefaultTrigger$Action;

    check-cast p2, Lmiuix/springback/trigger/DefaultTrigger$Action;

    invoke-virtual {p0, p1, p2}, Lmiuix/springback/trigger/DefaultTrigger$Action$1;->compare(Lmiuix/springback/trigger/DefaultTrigger$Action;Lmiuix/springback/trigger/DefaultTrigger$Action;)I

    move-result p0

    return p0
.end method

.method public compare(Lmiuix/springback/trigger/DefaultTrigger$Action;Lmiuix/springback/trigger/DefaultTrigger$Action;)I
    .locals 0

    iget p0, p1, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    iget p1, p2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
