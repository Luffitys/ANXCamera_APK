.class Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->peekDrawer()V

    return-void
.end method
