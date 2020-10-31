.class Lmiui/widget/SeekBarContainerLinearLayout$1;
.super Lmiui/animation/property/FloatProperty;
.source "SeekBarContainerLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/SeekBarContainerLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/property/FloatProperty<",
        "Lmiui/widget/SeekBarContainerLinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/SeekBarContainerLinearLayout;


# direct methods
.method constructor <init>(Lmiui/widget/SeekBarContainerLinearLayout;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lmiui/widget/SeekBarContainerLinearLayout$1;->this$0:Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-virtual {p0, p1}, Lmiui/widget/SeekBarContainerLinearLayout$1;->getValue(Lmiui/widget/SeekBarContainerLinearLayout;)F

    move-result p1

    return p1
.end method

.method public getValue(Lmiui/widget/SeekBarContainerLinearLayout;)F
    .registers 3

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout$1;->this$0:Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-virtual {v0}, Lmiui/widget/SeekBarContainerLinearLayout;->getProgress()F

    move-result v0

    return v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-virtual {p0, p1, p2}, Lmiui/widget/SeekBarContainerLinearLayout$1;->setValue(Lmiui/widget/SeekBarContainerLinearLayout;F)V

    return-void
.end method

.method public setValue(Lmiui/widget/SeekBarContainerLinearLayout;F)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout$1;->this$0:Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SeekBarContainerLinearLayout;->setProgress(I)V

    return-void
.end method
