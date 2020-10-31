.class public final Landroid/view/contentcapture/ContentCaptureContext;
.super Ljava/lang/Object;
.source "ContentCaptureContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureContext$Builder;,
        Landroid/view/contentcapture/ContentCaptureContext$ContextCreationFlags;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/contentcapture/ContentCaptureContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_DISABLED_BY_APP:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_DISABLED_BY_FLAG_SECURE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_RECONNECTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mDisplayId:I

.field private final mExtras:Landroid/os/Bundle;

.field private final mFlags:I

.field private final mHasClientContext:Z

.field private final mId:Landroid/content/LocusId;

.field private mParentSessionId:I

.field private final mTaskId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/contentcapture/ContentCaptureContext$1;

    invoke-direct {v0}, Landroid/view/contentcapture/ContentCaptureContext$1;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    # getter for: Landroid/view/contentcapture/ContentCaptureContext$Builder;->mExtras:Landroid/os/Bundle;
    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->access$000(Landroid/view/contentcapture/ContentCaptureContext$Builder;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    # getter for: Landroid/view/contentcapture/ContentCaptureContext$Builder;->mId:Landroid/content/LocusId;
    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->access$100(Landroid/view/contentcapture/ContentCaptureContext$Builder;)Landroid/content/LocusId;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mTaskId:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;Landroid/view/contentcapture/ContentCaptureContext$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/contentcapture/ContentCaptureContext;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    iget-boolean v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    iget v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mTaskId:I

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mTaskId:I

    iget v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    iget v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    return-void
.end method

.method public constructor <init>(Landroid/view/contentcapture/ContentCaptureContext;Landroid/content/ComponentName;III)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    goto :goto_1b

    :cond_14
    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    :goto_1b
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    iput p3, p0, Landroid/view/contentcapture/ContentCaptureContext;->mTaskId:I

    iput p4, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    iput p5, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    return-void
.end method

.method public static forLocusId(Ljava/lang/String;)Landroid/view/contentcapture/ContentCaptureContext;
    .registers 3

    new-instance v0, Landroid/view/contentcapture/ContentCaptureContext$Builder;

    new-instance v1, Landroid/content/LocusId;

    invoke-direct {v1, p0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;-><init>(Landroid/content/LocusId;)V

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->build()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object v0

    return-object v0
.end method

.method private fromServer()Z
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_12

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_12
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    if-eqz v0, :cond_20

    const-string v0, ", id="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {v0, p1}, Landroid/content/LocusId;->dump(Ljava/io/PrintWriter;)V

    :cond_20
    const-string v0, ", taskId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", displayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-eqz v0, :cond_42

    const-string v0, ", parentId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_42
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    if-lez v0, :cond_50

    const-string v0, ", flags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_50
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_59

    const-string v0, ", hasExtras"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_59
    return-void
.end method

.method public getActivityComponent()Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDisplayId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFlags()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    return v0
.end method

.method public getLocusId()Landroid/content/LocusId;
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    return-object v0
.end method

.method public getParentSessionId()Landroid/view/contentcapture/ContentCaptureSessionId;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    :goto_d
    return-object v0
.end method

.method public getTaskId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mTaskId:I

    return v0
.end method

.method public setParentSessionId(I)V
    .registers 2

    iput p1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Context["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureContext;->fromServer()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4d

    :cond_3a
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_4d

    const-string v1, ", hasExtras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    :goto_4d
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-eqz v1, :cond_5b

    const-string v1, ", parentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5b
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_13
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureContext;->fromServer()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2d
    return-void
.end method
