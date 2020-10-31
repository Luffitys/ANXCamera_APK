.class Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lmiui/widget/NumberPicker;

    const/4 v1, 0x1

    # setter for: Lmiui/widget/NumberPicker;->mIngonreMoveEvents:Z
    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->access$1702(Lmiui/widget/NumberPicker;Z)Z

    return-void
.end method
