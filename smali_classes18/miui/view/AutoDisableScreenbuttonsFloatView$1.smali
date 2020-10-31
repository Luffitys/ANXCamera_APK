.class Lmiui/view/AutoDisableScreenbuttonsFloatView$1;
.super Ljava/lang/Object;
.source "AutoDisableScreenbuttonsFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/AutoDisableScreenbuttonsFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/AutoDisableScreenbuttonsFloatView;


# direct methods
.method constructor <init>(Lmiui/view/AutoDisableScreenbuttonsFloatView;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;->this$0:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;->this$0:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    invoke-virtual {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->dismiss()V

    return-void
.end method
