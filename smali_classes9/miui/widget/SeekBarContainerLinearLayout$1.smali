.class Lmiui/widget/SeekBarContainerLinearLayout$1;
.super Lmiui/animation/property/FloatProperty;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/widget/SeekBarContainerLinearLayout;


# direct methods
.method constructor <init>(Lmiui/widget/SeekBarContainerLinearLayout;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/SeekBarContainerLinearLayout$1;->this$0:Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-virtual {p0, p1}, Lmiui/widget/SeekBarContainerLinearLayout$1;->getValue(Lmiui/widget/SeekBarContainerLinearLayout;)F

    move-result p0

    return p0
.end method

.method public getValue(Lmiui/widget/SeekBarContainerLinearLayout;)F
    .locals 0

    iget-object p0, p0, Lmiui/widget/SeekBarContainerLinearLayout$1;->this$0:Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-virtual {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getProgress()F

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-virtual {p0, p1, p2}, Lmiui/widget/SeekBarContainerLinearLayout$1;->setValue(Lmiui/widget/SeekBarContainerLinearLayout;F)V

    return-void
.end method

.method public setValue(Lmiui/widget/SeekBarContainerLinearLayout;F)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/SeekBarContainerLinearLayout$1;->this$0:Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiui/widget/SeekBarContainerLinearLayout;->setProgress(I)V

    return-void
.end method
