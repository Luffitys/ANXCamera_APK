.class Lmiui/widget/ListPopupWindow$ListSelectorHider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiui/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiui/widget/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ListPopupWindow$ListSelectorHider;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/ListPopupWindow$ListSelectorHider;-><init>(Lmiui/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow$ListSelectorHider;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->clearListSelection()V

    return-void
.end method
