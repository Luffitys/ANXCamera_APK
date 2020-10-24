.class Lmiuix/spring/view/SpringHelper$1;
.super Lmiuix/spring/view/SpringHelper$AxisHandler;
.source ""


# instance fields
.field final synthetic this$0:Lmiuix/spring/view/SpringHelper;


# direct methods
.method constructor <init>(Lmiuix/spring/view/SpringHelper;I)V
    .locals 0

    iput-object p1, p0, Lmiuix/spring/view/SpringHelper$1;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-direct {p0, p1, p2}, Lmiuix/spring/view/SpringHelper$AxisHandler;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    return-void
.end method


# virtual methods
.method protected canScroll()Z
    .locals 0

    iget-object p0, p0, Lmiuix/spring/view/SpringHelper$1;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->canScrollHorizontally()Z

    move-result p0

    return p0
.end method

.method protected getSize()I
    .locals 0

    iget-object p0, p0, Lmiuix/spring/view/SpringHelper$1;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->getWidth()I

    move-result p0

    return p0
.end method

.method onFlingReachEdge()V
    .locals 0

    iget-object p0, p0, Lmiuix/spring/view/SpringHelper$1;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->vibrate()V

    return-void
.end method
