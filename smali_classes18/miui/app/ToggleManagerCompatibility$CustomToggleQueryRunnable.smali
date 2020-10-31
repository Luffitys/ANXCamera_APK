.class public final Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;
.super Ljava/lang/Object;
.source "ToggleManagerCompatibility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManagerCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CustomToggleQueryRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManagerCompatibility;


# direct methods
.method public constructor <init>(Lmiui/app/ToggleManagerCompatibility;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    move-object/from16 v1, p0

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$300()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$400()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$600()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/app/ToggleManagerCompatibility;->access$100(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v3, v0

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lmiui/app/ToggleManagerCompatibility;->access$100(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v4

    # invokes: Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I
    invoke-static {v4}, Lmiui/app/ToggleManagerCompatibility;->access$1000(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4d

    monitor-exit v2

    return-void

    :cond_4d
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_51
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_151

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object v7, v0

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object v8, v0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v10, v0

    invoke-static {v9}, Lmiui/app/ToggleManagerCompatibility;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v0, :cond_8a

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v0, :cond_8a

    goto :goto_51

    :cond_8a
    const-string v0, "android.permission.BIND_QUICK_SETTINGS_TILE"

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_94
    .catchall {:try_start_7 .. :try_end_94} :catchall_1a3

    if-nez v0, :cond_97

    goto :goto_51

    :cond_97
    const/high16 v0, 0xc0000

    :try_start_99
    # invokes: Lmiui/app/ToggleManagerCompatibility;->isSystemApp(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    invoke-static {v3, v9}, Lmiui/app/ToggleManagerCompatibility;->access$1100(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v12

    if-eqz v12, :cond_a1

    or-int/lit16 v0, v0, 0x200

    :cond_a1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    iget-object v13, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lmiui/app/ToggleManagerCompatibility;->access$100(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v13

    # invokes: Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I
    invoke-static {v13}, Lmiui/app/ToggleManagerCompatibility;->access$1000(Landroid/content/Context;)I

    move-result v13

    invoke-interface {v12, v9, v0, v13}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v12

    iget v13, v12, Landroid/content/pm/ServiceInfo;->icon:I
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_b5} :catch_141
    .catchall {:try_start_99 .. :try_end_b5} :catchall_1a3

    if-eqz v13, :cond_c2

    :try_start_b7
    iget v13, v12, Landroid/content/pm/ServiceInfo;->icon:I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_b9} :catch_ba
    .catchall {:try_start_b7 .. :try_end_b9} :catchall_1a3

    goto :goto_c6

    :catch_ba
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move v3, v5

    goto/16 :goto_147

    :cond_c2
    :try_start_c2
    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->icon:I

    :goto_c6
    nop

    nop

    invoke-static {v8, v13}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v14

    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v15, v3}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d2} :catch_141
    .catchall {:try_start_c2 .. :try_end_d2} :catchall_1a3

    if-eqz v14, :cond_133

    if-nez v15, :cond_de

    move/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move v3, v5

    goto :goto_13a

    :cond_de
    :try_start_de
    # invokes: Lmiui/app/ToggleManagerCompatibility;->getMd5Num(Ljava/lang/String;)I
    invoke-static {v11}, Lmiui/app/ToggleManagerCompatibility;->access$1200(Ljava/lang/String;)I

    move-result v5

    add-int/lit16 v5, v5, 0x2710

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move/from16 v17, v0

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$300()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$400()Ljava/util/HashMap;

    move-result-object v0
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_f5} :catch_12c
    .catchall {:try_start_de .. :try_end_f5} :catchall_1a3

    move-object/from16 v18, v3

    :try_start_f7
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$500()Ljava/util/HashMap;

    move-result-object v0
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_109} :catch_127
    .catchall {:try_start_f7 .. :try_end_109} :catchall_1a3

    move-object/from16 v16, v4

    const/4 v3, 0x0

    :try_start_10c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$600()Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lmiui/app/ToggleManagerCompatibility;->access$100(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_124} :catch_125
    .catchall {:try_start_10c .. :try_end_124} :catchall_1a3

    goto :goto_14a

    :catch_125
    move-exception v0

    goto :goto_147

    :catch_127
    move-exception v0

    move-object/from16 v16, v4

    const/4 v3, 0x0

    goto :goto_147

    :catch_12c
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    const/4 v3, 0x0

    goto :goto_147

    :cond_133
    move/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move v3, v5

    :goto_13a
    move v5, v3

    move-object/from16 v4, v16

    move-object/from16 v3, v18

    goto/16 :goto_51

    :catch_141
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move v3, v5

    :goto_147
    :try_start_147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14a
    move v5, v3

    move-object/from16 v4, v16

    move-object/from16 v3, v18

    goto/16 :goto_51

    :cond_151
    move-object/from16 v18, v3

    move-object/from16 v16, v4

    iget-object v0, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/app/ToggleManagerCompatibility;->access$100(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->access$200()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_167
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17c

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17c
    goto :goto_167

    :cond_17d
    iget-object v3, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-virtual {v3, v0}, Lmiui/app/ToggleManagerCompatibility;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    iget-object v3, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lmiui/app/ToggleManagerCompatibility;->access$1300(Lmiui/app/ToggleManagerCompatibility;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$1;

    invoke-direct {v4, v1}, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$1;-><init>(Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    # getter for: Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lmiui/app/ToggleManagerCompatibility;->access$1300(Lmiui/app/ToggleManagerCompatibility;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$2;

    invoke-direct {v4, v1}, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$2;-><init>(Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    monitor-exit v2

    return-void

    :catchall_1a3
    move-exception v0

    monitor-exit v2
    :try_end_1a5
    .catchall {:try_start_147 .. :try_end_1a5} :catchall_1a3

    throw v0
.end method
