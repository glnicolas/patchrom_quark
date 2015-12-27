.class Lcom/android/server/pm/PackageManagerService$MeasureParams$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$MeasureParams;->handleStartCopy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$MeasureParams;)V
    .locals 0

    .prologue
    .line 7320
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 7320
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7323
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 7325
    .local v0, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 7328
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 7332
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v1

    iget-wide v2, v1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v4

    iget-wide v4, v4, Landroid/content/pm/PackageStats;->externalCacheSize:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 7334
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 7337
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$2700(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 7339
    const/4 v1, 0x0

    return-object v1
.end method
