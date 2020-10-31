.class public final Landroid/app/AppCompatCallbacks;
.super Landroid/compat/Compatibility$Callbacks;
.source "AppCompatCallbacks.java"


# instance fields
.field private final mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

.field private final mDisabledChanges:[J


# direct methods
.method private constructor <init>([J)V
    .registers 4

    invoke-direct {p0}, Landroid/compat/Compatibility$Callbacks;-><init>()V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppCompatCallbacks;->mDisabledChanges:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    new-instance v0, Lcom/android/internal/compat/ChangeReporter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object v0, p0, Landroid/app/AppCompatCallbacks;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    return-void
.end method

.method public static install([J)V
    .registers 2

    new-instance v0, Landroid/app/AppCompatCallbacks;

    invoke-direct {v0, p0}, Landroid/app/AppCompatCallbacks;-><init>([J)V

    invoke-static {v0}, Landroid/compat/Compatibility;->setCallbacks(Landroid/compat/Compatibility$Callbacks;)V

    return-void
.end method

.method private reportChange(JI)V
    .registers 6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppCompatCallbacks;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJI)V

    return-void
.end method


# virtual methods
.method protected isChangeEnabled(J)Z
    .registers 4

    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mDisabledChanges:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/AppCompatCallbacks;->reportChange(JI)V

    return v0

    :cond_d
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/app/AppCompatCallbacks;->reportChange(JI)V

    const/4 v0, 0x0

    return v0
.end method

.method protected reportChange(J)V
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Landroid/app/AppCompatCallbacks;->reportChange(JI)V

    return-void
.end method
