.class public Lcom/android/internal/app/ChooserActivityForCts$ChooserListController;
.super Lcom/android/internal/app/ResolverListController;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityForCts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserListController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivityForCts;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V
    .registers 19

    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lcom/android/internal/app/ChooserActivityForCts$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V

    return-void
.end method


# virtual methods
.method isComponentFiltered(Landroid/content/ComponentName;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mFilteredComponentNames:[Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivityForCts;->access$1500(Lcom/android/internal/app/ChooserActivityForCts;)[Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mFilteredComponentNames:[Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivityForCts;->access$1500(Lcom/android/internal/app/ChooserActivityForCts;)[Landroid/content/ComponentName;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_21

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_21
    return v1
.end method

.method public isComponentPinned(Landroid/content/ComponentName;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivityForCts;->access$1600(Lcom/android/internal/app/ChooserActivityForCts;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
