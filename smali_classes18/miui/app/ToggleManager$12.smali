.class Lmiui/app/ToggleManager$12;
.super Landroid/database/ContentObserver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lmiui/app/ToggleManager$12;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ToggleManager$12;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->queryBrightnessStatus()V
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$2500(Lmiui/app/ToggleManager;)V

    iget-object v0, p0, Lmiui/app/ToggleManager$12;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->updateBrightnessToggle()V
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$2600(Lmiui/app/ToggleManager;)V

    return-void
.end method
