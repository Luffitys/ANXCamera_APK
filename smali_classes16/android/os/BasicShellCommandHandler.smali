.class public abstract Landroid/os/BasicShellCommandHandler;
.super Ljava/lang/Object;
.source "BasicShellCommandHandler.java"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ShellCommand"


# instance fields
.field private mArgPos:I

.field private mArgs:[Ljava/lang/String;

.field private mCmd:Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mErr:Ljava/io/FileDescriptor;

.field private mErrPrintWriter:Ljava/io/PrintWriter;

.field private mFileErr:Ljava/io/FileOutputStream;

.field private mFileIn:Ljava/io/FileInputStream;

.field private mFileOut:Ljava/io/FileOutputStream;

.field private mIn:Ljava/io/FileDescriptor;

.field private mInputStream:Ljava/io/InputStream;

.field private mOut:Ljava/io/FileDescriptor;

.field private mOutPrintWriter:Ljava/io/PrintWriter;

.field private mTarget:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I
    .registers 15

    if-eqz p5, :cond_b

    array-length v0, p5

    if-lez v0, :cond_b

    const/4 v0, 0x0

    aget-object v0, p5, v0

    const/4 v1, 0x1

    move v8, v1

    goto :goto_e

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v8, v1

    :goto_e
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Landroid/os/BasicShellCommandHandler;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    const/4 v1, -0x1

    :try_start_1b
    invoke-virtual {p0, v0}, Landroid/os/BasicShellCommandHandler;->onCommand(Ljava/lang/String;)I

    move-result v2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_2f

    move v1, v2

    iget-object v2, p0, Landroid/os/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    :cond_27
    iget-object v2, p0, Landroid/os/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_61

    :goto_2b
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    goto :goto_61

    :catchall_2f
    move-exception v2

    :try_start_30
    invoke-virtual {p0}, Landroid/os/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred while executing \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/os/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_55
    .catchall {:try_start_30 .. :try_end_55} :catchall_62

    iget-object v2, p0, Landroid/os/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    :cond_5c
    iget-object v2, p0, Landroid/os/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_61

    goto :goto_2b

    :cond_61
    :goto_61
    return v1

    :catchall_62
    move-exception v2

    iget-object v3, p0, Landroid/os/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    :cond_6a
    iget-object v3, p0, Landroid/os/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz v3, :cond_71

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    :cond_71
    throw v2
.end method

.method public getAllArgs()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getBufferedInputStream()Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_f

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/os/BasicShellCommandHandler;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    :cond_f
    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getErrFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getErrPrintWriter()Ljava/io/PrintWriter;
    .registers 3

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/os/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-nez v0, :cond_18

    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Landroid/os/BasicShellCommandHandler;->getRawErrorStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    :cond_18
    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public getInFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getNextArg()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    iput-object v1, p0, Landroid/os/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    return-object v0

    :cond_a
    iget v0, p0, Landroid/os/BasicShellCommandHandler;->mArgPos:I

    iget-object v2, p0, Landroid/os/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_18

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/BasicShellCommandHandler;->mArgPos:I

    aget-object v0, v2, v0

    return-object v0

    :cond_18
    return-object v1
.end method

.method public getNextArgRequired()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroid/os/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object v1, p0, Landroid/os/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget v2, p0, Landroid/os/BasicShellCommandHandler;->mArgPos:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNextOption()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_4e

    iget v0, p0, Landroid/os/BasicShellCommandHandler;->mArgPos:I

    iget-object v2, p0, Landroid/os/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v0, v3, :cond_e

    return-object v4

    :cond_e
    aget-object v0, v2, v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    return-object v4

    :cond_19
    iget v2, p0, Landroid/os/BasicShellCommandHandler;->mArgPos:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/os/BasicShellCommandHandler;->mArgPos:I

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    return-object v4

    :cond_27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4b

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_4b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_48

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_48
    iput-object v4, p0, Landroid/os/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    return-object v0

    :cond_4b
    iput-object v4, p0, Landroid/os/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    return-object v0

    :cond_4e
    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget v2, p0, Landroid/os/BasicShellCommandHandler;->mArgPos:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No argument expected after \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getOutFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getOutPrintWriter()Ljava/io/PrintWriter;
    .registers 3

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-nez v0, :cond_f

    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Landroid/os/BasicShellCommandHandler;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    :cond_f
    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public getRawErrorStream()Ljava/io/OutputStream;
    .registers 3

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    if-nez v0, :cond_d

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/os/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    :cond_d
    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    if-nez v0, :cond_d

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroid/os/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    :cond_d
    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getRawOutputStream()Ljava/io/OutputStream;
    .registers 3

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    if-nez v0, :cond_d

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/os/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    :cond_d
    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public getRemainingArgsCount()I
    .registers 4

    iget v0, p0, Landroid/os/BasicShellCommandHandler;->mArgPos:I

    iget-object v1, p0, Landroid/os/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    array-length v1, v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public getTarget()Landroid/os/Binder;
    .registers 2

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mTarget:Landroid/os/Binder;

    return-object v0
.end method

.method public handleDefaultCommands(Ljava/lang/String;)I
    .registers 5

    if-eqz p1, :cond_2c

    const-string v0, "help"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "-h"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2c

    :cond_13
    invoke-virtual {p0}, Landroid/os/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f

    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Landroid/os/BasicShellCommandHandler;->onHelp()V

    :goto_2f
    const/4 v0, -0x1

    return v0
.end method

.method public init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V
    .registers 8

    iput-object p1, p0, Landroid/os/BasicShellCommandHandler;->mTarget:Landroid/os/Binder;

    iput-object p2, p0, Landroid/os/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    iput-object p3, p0, Landroid/os/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    iput-object p4, p0, Landroid/os/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    iput-object p5, p0, Landroid/os/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    iput p6, p0, Landroid/os/BasicShellCommandHandler;->mArgPos:I

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    iput-object v0, p0, Landroid/os/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public abstract onCommand(Ljava/lang/String;)I
.end method

.method public abstract onHelp()V
.end method

.method public peekNextArg()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroid/os/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget v0, p0, Landroid/os/BasicShellCommandHandler;->mArgPos:I

    iget-object v1, p0, Landroid/os/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_f

    aget-object v0, v1, v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method
