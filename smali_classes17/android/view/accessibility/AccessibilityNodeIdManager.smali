.class public final Landroid/view/accessibility/AccessibilityNodeIdManager;
.super Ljava/lang/Object;
.source "AccessibilityNodeIdManager.java"


# static fields
.field private static sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;


# instance fields
.field private mIdsToViews:Landroid/view/accessibility/WeakSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/accessibility/WeakSparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/accessibility/WeakSparseArray;

    invoke-direct {v0}, Landroid/view/accessibility/WeakSparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/view/accessibility/AccessibilityNodeIdManager;
    .registers 2

    const-class v0, Landroid/view/accessibility/AccessibilityNodeIdManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeIdManager;->sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;

    if-nez v1, :cond_e

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeIdManager;

    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityNodeIdManager;-><init>()V

    sput-object v1, Landroid/view/accessibility/AccessibilityNodeIdManager;->sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;

    :cond_e
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeIdManager;->sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public findView(I)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    invoke-virtual {v2, p1}, Landroid/view/accessibility/WeakSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v0, v2

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_1a

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_18

    move-object v1, v0

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return-object v1

    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public registerViewWithId(Landroid/view/View;I)V
    .registers 5

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/view/accessibility/WeakSparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public unregisterViewWithId(I)V
    .registers 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    invoke-virtual {v1, p1}, Landroid/view/accessibility/WeakSparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
