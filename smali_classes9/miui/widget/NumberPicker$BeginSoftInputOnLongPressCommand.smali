.class Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lmiui/widget/NumberPicker;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmiui/widget/NumberPicker;->access$1702(Lmiui/widget/NumberPicker;Z)Z

    return-void
.end method
