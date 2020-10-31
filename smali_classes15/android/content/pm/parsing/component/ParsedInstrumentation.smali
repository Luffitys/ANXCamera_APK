.class public Landroid/content/pm/parsing/component/ParsedInstrumentation;
.super Landroid/content/pm/parsing/component/ParsedComponent;
.source "ParsedInstrumentation.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/parsing/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field functionalTest:Z

.field handleProfiling:Z

.field private targetPackage:Ljava/lang/String;

.field private targetProcesses:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/parsing/component/ParsedInstrumentation$1;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedInstrumentation$1;-><init>()V

    sput-object v0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/pm/parsing/component/ParsedComponent;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/component/ParsedComponent;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->targetPackage:Ljava/lang/String;

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->targetProcesses:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->handleProfiling:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    iput-boolean v1, p0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->functionalTest:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->targetPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetProcesses()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->targetProcesses:Ljava/lang/String;

    return-object v0
.end method

.method public isFunctionalTest()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->functionalTest:Z

    return v0
.end method

.method public isHandleProfiling()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->handleProfiling:Z

    return v0
.end method

.method public setTargetPackage(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->targetPackage:Ljava/lang/String;

    return-void
.end method

.method public setTargetProcesses(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->targetProcesses:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Instrumentation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/content/pm/parsing/component/ParsedComponent;->writeToParcel(Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->targetProcesses:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->handleProfiling:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedInstrumentation;->functionalTest:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
