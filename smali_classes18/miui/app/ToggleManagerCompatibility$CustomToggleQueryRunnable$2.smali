.class Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$2;
.super Ljava/lang/Object;
.source "ToggleManagerCompatibility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$2;->this$1:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$2;->this$1:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    iget-object v0, v0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;
    invoke-static {v0}, Lmiui/app/ToggleManagerCompatibility;->access$700(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    invoke-interface {v1}, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;->OnToggleOrderChanged()V

    goto :goto_c

    :cond_1c
    return-void
.end method
