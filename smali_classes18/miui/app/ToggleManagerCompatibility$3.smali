.class Lmiui/app/ToggleManagerCompatibility$3;
.super Landroid/database/ContentObserver;
.source "ToggleManagerCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManagerCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManagerCompatibility;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManagerCompatibility;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/app/ToggleManagerCompatibility;->access$100(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/ToggleManagerCompatibility;->getCustomToggleIds(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_10
    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$200()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_76

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$200()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$300()Ljava/util/HashMap;

    move-result-object v3

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$400()Ljava/util/HashMap;

    move-result-object v3

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$500()Ljava/util/HashMap;

    move-result-object v3

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$600()Ljava/util/HashMap;

    move-result-object v3

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$200()Ljava/util/ArrayList;

    move-result-object v3

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_5 .. :try_end_77} :catchall_b2

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;
    invoke-static {v0}, Lmiui/app/ToggleManagerCompatibility;->access$700(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_81
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    invoke-interface {v1}, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;->OnToggleOrderChanged()V

    goto :goto_81

    :cond_91
    # getter for: Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$800()Z

    move-result v0

    if-nez v0, :cond_b1

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;
    invoke-static {v0}, Lmiui/app/ToggleManagerCompatibility;->access$900(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;

    invoke-interface {v1}, Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;->onCustomToggleChanged()V

    goto :goto_a1

    :cond_b1
    return-void

    :catchall_b2
    move-exception v1

    :try_start_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v1
.end method
